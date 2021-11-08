class Terminal
  def self.input_get
    gets.chomp
  end

  def self.title
    puts 'Temperature converter'
  end

  def self.temperature_type_warning
    puts 'You must write only K or F or C'
  end

  def self.enter_start_scale
    puts 'Enter start scale for convert (K, C, F)'
  end

  def self.enter_end_scale
    puts 'Enter end scale for convert (K, C, F)'
  end

  def self.enter_value
    puts 'Enter value for convert'
  end

  def self.print_result(from, to, start_value, end_value)
    puts "#{start_value} #{from} = #{end_value.round(2)} #{to}"
  end
end
