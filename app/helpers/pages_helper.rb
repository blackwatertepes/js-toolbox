module PagesHelper
  def format_change(change)
    return "0.00" if change.nil?
    formatted = number_with_precision(change, precision: 2)
    return "+#{formatted}" if change > 0
    return formatted if change <= 0
    return 0.0
  end
  
  def change_class(change)
    return "up" if change > 0
    return "down" if change < 0
  end
  
  def trim_name(name)
    return "#{name[0..12]}..." if name.length > 16
    return name
  end
end
