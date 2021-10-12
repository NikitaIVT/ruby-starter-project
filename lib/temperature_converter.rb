require_relative './converter.rb'
require_relative './terminal_text.rb'
require_relative './from.rb'
require_relative './to.rb'
require_relative './value.rb'

class TemperatureConverter
  def self.run
    TerminalText.title

    from = From.input
    while !From.is_correct? from
      from = From.input
    end

    to = To.input
    while !To.is_correct? to
      to = To.input
    end

    start_value = Value.get_value
    while !Value.is_number? start_value
      start_value = Value.get_value
    end

    end_value = Converter.convert_selector start_value, from, to
    puts "#{start_value.round(2)} #{from} = #{end_value} #{to}" 
  end
end
