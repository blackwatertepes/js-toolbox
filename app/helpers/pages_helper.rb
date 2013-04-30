module PagesHelper
  def format_change(change)
    formatted = number_with_precision(change, precision: 2)
    return "+#{formatted}" if change > 0
    return formatted if change <= 0
    return 0.0
  end
  
  def change_class(change)
    return "up" if change > 0
    return "down" if change < 0
  end
end
