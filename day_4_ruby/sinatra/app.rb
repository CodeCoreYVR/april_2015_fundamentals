require "sinatra"
require "data_mapper"
require "pony"

# This will enable us to have a workaround to make forms
# submit with "patch" / "put" / "delete" by sending a special
# parameter called _method
use Rack::MethodOverride

# This will help DataMapper (ORM) connect to the database.
# In this case the database is SQLite and the location of the
# file where the data is stored is in the same folder as this file(app.rb)
# so a file will be used (or created) called my_database.db
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/my_database.db")

# datamapper will create or use a table in the database
# called "contacts"
class Contact
  include DataMapper::Resource

  # Serial datatype will make it PRIMARY KEY AUTOINCREMENT
  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :phone_number, String
  property :message, Text
  property :note, Text
  # you can use String for shorter texts (255 characters or less)
  # you can use Text for larger texts (more than 255 characters)

end

# this will create the "contacts" table if it doesn't exist already
# if the table already exists, it will add the columns for the properties
# that haven't been added already
Contact.auto_upgrade!


helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# this means when the sinatra server receives a GET request
# with the url being "/" (which means home page)
# Sinatra will just respond with text that says "Hello World"
# get "/" do
#   "Hello World"
# end

get "/" do
  # this will look for a file called "index.erb"
  # inside "views" folder located inside the same folder
  # as this file 'app.rb'
  # it must be named "views" - all lower case
  erb(:index, {layout: :application})
end

get "/about" do
  erb :about, layout: :application
end

# this will be executed when the user goes to /contact
# which will display the contact form
get "/contact" do
  erb :contact, layout: :application
end

# this will be executed when the form is submitted
post "/contact" do
  # this will create a record (row) in the database inside the
  # contacts table using DataMapper with the parameters given from
  # the user
  Contact.create(params)

  Pony.mail({
    to: "tam@codecore.ca",
    subject: "#{params[:first_name]} #{params[:last_name]} contacted you",
    body: params[:message],
    via: :smtp,
    via_options: {
      address:        'smtp.gmail.com',
      port:           '587',
      user_name:      'answerawesome',
      password:       'Sup3r$ecret',
      authentication: :plain, # :plain, :login, :cram_md5, no auth by default
      domain:         "localhost.localdomain" # the HELO domain provided by the client to the server
    }
    })
  erb :thank_you, layout: :application
end

get "/all_contacts" do
  protected!
  # This will use DataMapper to query the database for all the contact
  # records. It will give us an array-like object that we can iterate
  # through and display the information about each contact.
  @contacts = Contact.all
  erb :all_contacts, layout: :application
end

# this will accept any url that has /contact/anything
# for instance:
# /contact/1
# /contact/1003
# /contact/hello
get "/contact/:id" do |id|
  protected!
  # The "get" method for DataMapper will fetch a specific single
  # record using its id
  # so we must pass it the id of that record
  @contact = Contact.get(id)
  erb :contact_details, layout: :application
end

# we're updating an existing record so it's better to use patch or put
# in this case.
patch "/note/:id" do |id|
  contact = Contact.get id
  contact.note = params[:note]
  contact.save
  redirect back
end

# we use delete in here because we'd like to destroy the record from the
# database
delete "/contact/:id" do |id|
  contact = Contact.get(id)
  contact.destroy
  redirect to("/all_contacts")
end
