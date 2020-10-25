class Microwave
  SECONDS_IN_A_MINUTE = 60
  LIMIT = 100

  def initialize(value_in_panel)
    if value_in_panel >= LIMIT
      hours = value_in_panel / LIMIT
      @seconds = hours * SECONDS_IN_A_MINUTE + (value_in_panel - hours * LIMIT)
    else
      @seconds = value_in_panel
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
