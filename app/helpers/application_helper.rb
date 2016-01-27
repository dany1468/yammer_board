module ApplicationHelper
  def parse_time(time_str)
    Time.zone.parse(time_str).in_time_zone('Tokyo')
  end
end
