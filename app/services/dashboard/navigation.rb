class Dashboard::Navigation
  attr_accessor :navigation

  def initialize
    @navigation = []
    setup
  end

  def setup
    routes = Rails.application.routes.named_routes.helper_names
    except_routes = [/rails/, /url/, /turbo/, /new/, /edit/, /\w+((?!s).)_path/]
    routes.each { |s| @navigation << s unless except_routes.any? { |e| s.match?(e) } }
    @navigation.map(&:to_sym)
    navigation_alias = @navigation.map { |x| x.gsub("_", " ").gsub("path", "").capitalize }
    @navigation = Hash[[navigation_alias, @navigation].transpose]
    # {:Beranda=>"root_path", "Order details "=>"order_details_path", .. }
    @navigation = add_nav(@navigation)
    @navigation = ren_nav(@navigation)
    @navigation = rem_nav(@navigation)
  end

  def rem_nav(navigation)
    return navigation
  end

  def ren_nav(navigation)
    
    return navigation
  end

  def add_nav(navigation)
    navigation_addition = {
      "beranda"=> "root_path",
    }
    navigation = navigation.inject(navigation_addition) { |h, (k, v)| h[k] = v; h }
    return navigation_addition
  end

  def navigation_extract(str)
    str.gsub("_path", "").split("_").join(" ").capitalize
  end
end
