class TerminalText
  def self.title
    system 'clear'
    puts 'Temperature converter'
  end

  def self.temperature_type_warning
    system 'clear'
    puts 'You must write only K or F or C'
  end
end