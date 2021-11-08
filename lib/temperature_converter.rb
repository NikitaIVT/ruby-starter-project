require_relative './terminal.rb'
require_relative './converter.rb'
require_relative './temperature.rb'

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