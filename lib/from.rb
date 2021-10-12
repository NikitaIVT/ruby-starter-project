class From
  def self.input
    puts 'Enter type of start temperature'
    from = gets.chomp
  end

  def self.is_correct? from
    if from == 'K' or from == 'C' or from == 'F'
      return true
    else
      return false
    end
  end
end