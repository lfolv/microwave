class Microwave
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    "00:0#{@seconds}"
  end
end
