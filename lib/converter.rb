class Converter
  attr_accessor :from, :to, :value

  def convert_selector
    case to
    when 'C'
      to_celsius!
    when 'K'
      to_kelvin!
    when 'F'
      to_fahrenheit!
    end
  end

  def to_celsius!
    case from
    when 'C'
      same_scales
    when 'K'
      from_k_to_c!
    when 'F'
      from_f_to_c!
    end
  end

  def to_kelvin!
    case from
    when 'C'
      from_c_to_k!
    when 'K'
      same_scales
    when 'F'
      from_f_to_k!
    end
  end

  def to_fahrenheit!
    case from
    when 'C'
      from_c_to_f!
    when 'K'
      from_k_to_f!
    when 'F'
      same_scales
    end
  end

  def same_scales
    @value
  end

  def from_f_to_c!
    @value = (@value - 32) * 5 / 9
  end

  def from_k_to_c!
    @value -= 273.15
  end

  def from_c_to_k!
    @value += 273.15
  end

  def from_f_to_k!
    @value = (@value - 32) * 5 / 9 + 273.15
  end

  def from_c_to_f!
    @value = @value * 1.8 + 32
  end

  def from_k_to_f!
    @value = (@value - 273.15) * 9 / 5 + 32
  end
end
