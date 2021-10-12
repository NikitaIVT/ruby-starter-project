require_relative 'terminal_text.rb'

class To
    def self.input
      puts 'Enter type of end temperature (K, C, F)'
      to = gets.chomp
    end
  
    def self.is_correct? to
      if to == 'K' or to == 'C' or to == 'F'
        return true
      else
        TerminalText.temperature_type_warning
        return false
      end
    end
  end