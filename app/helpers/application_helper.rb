module ApplicationHelper
  def format_date(datetime)
    datetime.to_formatted_s(:long_ordinal).sub(/ \d\d\:\d\d/, '')
  end
end
