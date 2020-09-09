class Microwave
  SECONDS_IN_A_MINUTE = 60

  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    "#{hh}:#{ss}"
  end

  private

  attr_reader :seconds

  def hh
    format_to_display(seconds / SECONDS_IN_A_MINUTE)
  end

  def ss
    format_to_display(seconds % SECONDS_IN_A_MINUTE)
  end

  def format_to_display(time)
    time.to_s.rjust(2, '0')
  end
end
