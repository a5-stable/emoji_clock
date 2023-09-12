module ClockVariety
  EMOJI_CLOCK_CODE_POINT = 128336
  ALARM_CLOCK = "\u{23F0}"
  TIMER_CLOCK = "\u{23F2}"
  WATCH_CLOCK = "\u{231A}"
  STOP_WATCH_CLOCK = "\u{23F1}"
  HOUR_GLASS_DONE = "\u{231B}"
  HOUR_GLASS_UNDONE = "\u{23F3}"
  MANTELPIECE_CLOCK = "\u{1F570}"

  def alarm
    ALARM_CLOCK
  end

  def timer
    TIMER_CLOCK
  end

  def watch
    WATCH_CLOCK
  end

  def stop_watch
    STOP_WATCH_CLOCK
  end

  def hourglass_done
    HOUR_GLASS_DONE
  end

  def hourglass_undone
    HOUR_GLASS_UNDONE
  end

  def mantelpiece
    MANTELPIECE_CLOCK
  end
end
