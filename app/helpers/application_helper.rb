module ApplicationHelper
  def parse_datetime(datetime)
    new_datetime = Time.strptime(datetime, "%m/%d/%Y %I:%M %p")
  end
end
