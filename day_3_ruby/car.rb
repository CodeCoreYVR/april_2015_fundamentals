class Car

  def initialize(model, type, capacity)
    # @model, @type, @capacity = model, type, capacity
    @model    = model
    @type     = type
    @capacity = capacity
  end

  def specs
    "This car's model is #{@model} of type: #{@type} and capacity: #{@capacity}"
  end

  def drive
    ignite_engine
    puts "Driving..."
  end

  def park
    puts "Watch out.."
  end

  def stop
    puts "Stopping..."
  end

  def self.max_speed
    puts "200"
  end

  private

  def pump_gas
    puts "Pumping gas..."
  end

  def ignite_engine
    puts "Igniting Engine..."
  end

end
