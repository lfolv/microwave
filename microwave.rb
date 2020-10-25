class Microwave
  SECONDS_IN_A_MINUTE = 60
  LIMIT = 100

  def initialize(timer_in_panel)
    if timer_in_panel >= LIMIT
      hours = timer_in_panel / LIMIT
      @seconds = hours * SECONDS_IN_A_MINUTE + (timer_in_panel - hours * LIMIT)
    else
      @seconds = timer_in_panel
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
