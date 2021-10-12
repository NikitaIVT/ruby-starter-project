class Value
  def self.get_value
    system 'clear'
    puts 'Enter temperature value to convert'
    value = gets.chomp
    value = Integer(value) rescue false
  end

  def self.is_number? value
    if value
      return true
    else
      return false
    end
  end
end