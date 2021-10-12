class To
    def self.input
      puts 'Enter type of end temperature'
      to = gets.chomp
    end
  
    def self.is_correct? to
      if to == 'K' or to == 'C' or to == 'F'
        return true
      else
        return false
      end
    end
  end