class Temperature
  attr_accessor :from, :to, :start_value, :end_value

  def input_from!
    loop do
      Terminal.enter_start_scale
      @input = Terminal.input_get
      break if allowed_scale? @input
    end
    @from = @input
  end

  def input_to!
    loop do
      Terminal.enter_end_scale
      @input = Terminal.input_get
      break if allowed_scale? @input
    end
    @to = @input
  end

  def input_value!
    loop do
      Terminal.enter_value
      @input = Terminal.input_get
      break if number? @input
    end
    @start_value = @input.to_f
  end

  def allowed_scale?(scale)
    %w[F K C].include? scale
  end

  def number?(value)
    Float value
    true
  rescue StandardError
    false
  end

  def convert!
    temp = Converter.new
    temp.value = @start_value
    temp.from = @from
    temp.to = @to
    @end_value = temp.convert_selector
  end
end
