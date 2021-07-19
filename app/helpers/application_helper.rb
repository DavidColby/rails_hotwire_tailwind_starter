module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :notice
      'bg-blue-400 border-blue-400'
    when :success
      'bg-green-400 border-green-400'
    when :alert
      'bg-red-400 border-red-400'
    when :error
      'bg-red-400 border-red-400'
    else
      'bg-blue-400 border-blue-400'
    end
  end
end
