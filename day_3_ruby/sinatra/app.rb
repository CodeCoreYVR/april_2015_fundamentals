require "sinatra"

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
  erb :index, layout: :application
end


get "/about" do
  erb :about, layout: :application
end
