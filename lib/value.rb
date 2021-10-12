class Value
  def self.get_value
    puts 'Enter start temperature value'
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