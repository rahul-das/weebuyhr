module ApplicationHelper
  def time_diff(from_time, to_time)
    return seconds_to_dhm((to_time - from_time).round)
  end

  def seconds_to_dhm(seconds)
    days = (seconds / (24 * 60 * 60)).floor
    seconds = seconds % (24 * 60 * 60)
    hours = (seconds / (60 * 60)).floor
    seconds = seconds % (60 * 60)
    minutes = (seconds / 60.0).ceil
    if days == 0
      if hours == 0
        return "#{minutes}m"
      else
        return "#{hours}h #{minutes}m"
      end
    else
      if hours == 0
        return "#{days}d #{minutes}m"
      else
        return "#{days}d #{hours}h #{minutes}m"
      end
    end
  end
end
