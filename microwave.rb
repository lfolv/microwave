class Microwave
  SECONDS_IN_A_MINUTE = 60
  LIMIT = 100

  def initialize(input)
    if input >= LIMIT
      hours = input / LIMIT
      @seconds = hours * SECONDS_IN_A_MINUTE + (input - hours * LIMIT)
    else
      @seconds = input
    end
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
