class Microwave
  SECONDS_IN_A_MINUTE = 60
  LIMIT = 100

  def initialize(digits)
    if digits >= LIMIT
      h = digits / LIMIT
     @seconds = h * SECONDS_IN_A_MINUTE + (digits - h * LIMIT)
    else
      @seconds = digits
    end
  end

  def timer
    "%02d:%02d" % [hours, seconds]
  end

  private

  attr_reader :seconds

  def hours
    @seconds / SECONDS_IN_A_MINUTE
  end

  def seconds
    @seconds % SECONDS_IN_A_MINUTE
  end
end
