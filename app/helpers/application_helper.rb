module ApplicationHelper
  def navigation
    n = []
    r = Rails.application.routes.named_routes.helper_names
    er = [/rails/, /url/, /turbo/, /new/, /edit/, /\w+((?!s).)_path/]
    r.each { |s| n << s unless er.any? { |e| s.match?(e) } }
    return n
  end

  def navigation_extract(str)
    str.gsub('_path','').split('_').join(' ').capitalize
  end
end
