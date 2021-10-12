class Converter
  def self.to_celsius value, type
    if type == 'K'
      return (value - 273.15).round(2)
    end
    if type == 'F'
      return ((value - 32) * 5 / 9).round(2)
    end
  end
  
  def self.to_kelvin value, type
    if type == 'C'
      return (value + 273.15).round(2)
    end
    if type == 'F'
      return ((value - 32) * 5 / 9 + 273.15).round(2)
    end
  end

  def self.to_fahrenheit value, type
    if type == 'K'
      return ((value - 273.15) * 9 / 5 + 32).round(2)
    end
    if type == 'C'
      return (value * 9 / 5 + 32).round(2)
    end
  end

  def self.convert_selector value, from, to
    case to
      when "C"
        value = to_celsius value, from
      when "K"
        value = to_kelvin value, from
      when "F"
        value = to_fahrenheit value, from
    end
    return value
  end
end