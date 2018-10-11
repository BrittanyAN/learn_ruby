class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds
    return @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    hours = (seconds / (60.0 * 60)).floor
    minutes = ((seconds - (hours * 60 * 60))/ 60.0).floor
    secs = seconds % 60
    hours = hours < 10 ? "0" + hours.to_s : hours.to_s
    minutes = minutes < 10 ? "0" + minutes.to_s : minutes.to_s
    secs = secs < 10 ? "0" + secs.to_s : secs.to_s

    display = hours + ":" + minutes + ":" + secs
    return display
  end

end
