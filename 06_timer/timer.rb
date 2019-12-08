class Timer
  attr_accessor :seconds, :minutes, :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds=(value)
    @hours = value/3600
    if @hours >=24
      @hours = @hours % 24
    end
    @minutes = (value%3600)/60
    @seconds = value%60
  end

  def minutes=(value)
    @hours = value/60
    if @hours >=24
      @hours = @hours % 24
    end
    @minutes = value%60
  end

  def hours=(value)
    @hours = value
    if @hours >=24
      @hours = @hours % 24
    end
  end

  def time_string
    "#{padded @hours}:#{padded @minutes}:#{padded @seconds}"
  end

  def padded input
    if input < 10
      return "0#{input}"
    else
      return input.to_s
    end
  end
end
