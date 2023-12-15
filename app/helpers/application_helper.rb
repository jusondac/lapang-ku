module ApplicationHelper
  def navigation
    n = []
    r = Rails.application.routes.named_routes.helper_names
    er = [/rails/, /url/, /turbo/, /new/, /edit/, /\w+((?!s).)_path/]
    r.each { |s| n << s if er.any? { |e| route.match?(e) } }
    return n
  end
end
