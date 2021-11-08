require_relative './terminal'
require_relative './converter'
require_relative './temperature'

class TemperatureConverter
  def run
    Terminal.title
    temp = Temperature.new
    temp.input_from!
    temp.input_to!
    temp.input_value!
    temp.convert!
    Terminal.print_result temp.from, temp.to, temp.start_value, temp.end_value
  end
end
