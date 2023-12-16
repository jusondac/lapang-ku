module ApplicationHelper
  include Pagy::Frontend

  def navigation
    n = []
    r = Rails.application.routes.named_routes.helper_names
    er = [/rails/, /url/, /turbo/, /new/, /edit/, /\w+((?!s).)_path/]
    r.each { |s| n << s unless er.any? { |e| s.match?(e) } }
    return n
  end

  def navigation_extract(str)
    str.gsub("_path", "").split("_").join(" ").capitalize
  end

  def status_bg(num)
    case (num)
    when :success then "bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-300".html_safe
    when :canceled then "bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-300".html_safe
    when :waiting_payment then "bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-300".html_safe
    end
  end
end
