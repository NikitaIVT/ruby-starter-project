require_relative 'terminal_text.rb'

class From
  def self.input
    puts 'Enter type of start temperature (K, C, F)'
    from = gets.chomp
  end

  def self.is_correct? from
    if from == 'K' or from == 'C' or from == 'F'
      return true
    else
      TerminalText.temperature_type_warning
      return false
    end
  end
end