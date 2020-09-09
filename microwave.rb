class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    "#{hh}:#{ss}"
  end

  private

  attr_reader :seconds

  def hh
    (seconds / 60).to_s.rjust(2, '0')
  end

  def ss
    (seconds % 60).to_s.rjust(2, '0')
  end
end
