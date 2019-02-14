module ApplicationHelper
  def time_diff(from_time, to_time)
    return seconds_to_dhm((to_time - from_time).round)
  end

  def seconds_to_dhm(seconds)
    hours = (seconds / (60 * 60)).floor
    seconds = seconds % (60 * 60)
    minutes = (seconds / 60.0).ceil
    if hours == 0
      return "#{minutes}m"
    else
      return "#{hours}h #{minutes}m"
    end
  end
end
