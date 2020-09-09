class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    seconds_timer = seconds.to_s.rjust(2, '0')
    "00:#{seconds_timer}"
  end

  private

  attr_reader :seconds
end
