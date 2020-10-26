class Microwave
  SECONDS_IN_A_MINUTE = 60
  LIMIT = 100

  def initialize(digits)
    if digits >= LIMIT
      hours = digits / LIMIT
     @seconds = hours * SECONDS_IN_A_MINUTE + (digits - hours * LIMIT)
    else
      @seconds = digits
    end
  end

  def timer
    "%02d:%02d" % [hh, ss]
  end

  private

  attr_reader :seconds

  def hh
    seconds / SECONDS_IN_A_MINUTE
  end

  def ss
    seconds % SECONDS_IN_A_MINUTE
  end
end
