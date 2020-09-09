class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    "00:#{ss}"
  end

  private

  attr_reader :seconds

  def ss
    seconds.to_s.rjust(2, '0')
  end
end
