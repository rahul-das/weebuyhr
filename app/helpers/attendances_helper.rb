module AttendancesHelper
  def time_diff(from_time, to_time)
    hours = ((to_time - from_time).round / 3600)
    minutes = (((to_time - from_time).round % 3600.0) / 60.0).ceil
    if hours == 0
      return "#{minutes} minute(s)"
    else
      return "#{hours} hour(s) #{minutes} minute(s)"
    end
  end
end
