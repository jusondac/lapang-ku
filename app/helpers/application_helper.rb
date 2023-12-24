module ApplicationHelper
  include Pagy::Frontend

  def navigation
    navigation = []
    routes = Rails.application.routes.named_routes.helper_names
    except_routes = [/rails/, /url/, /turbo/, /new/, /edit/, /\w+((?!s).)_path/]
    routes.each { |s| navigation << s unless except_routes.any? { |e| s.match?(e) } }
    navigation.map(&:to_sym)
    navigation_alias = navigation.map { |x| x.gsub("_", " ").gsub("path", "").capitalize }
    navigation = Hash[[navigation_alias, navigation].transpose]
    # {:Beranda=>"root_path", "Order details "=>"order_details_path", .. }
    navigation = add_nav(navigation)
    navigation = rename_nav(navigation)
    return navigation
  end

  def rename_nav(navigation)
    navigation = navigation.transform_keys({
 # wait for code
      })
    return navigation
  end

  def add_nav(navigation)
    navigation_addition = {
      "Beranda": "root_path",
    }
    navigation = navigation.inject(navigation_addition) { |h, (k, v)| h[k] = v; h }
    return navigation_addition
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

  def t(params)
    I18n.t params
  end

  def hours_on_date(date)
    start = date.beginning_of_day
    finish = date.end_of_day
    hours = []
    while start <= finish do
      hours << start 
      start += 1.hours
    end
    return hours
  end
end
