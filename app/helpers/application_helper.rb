module ApplicationHelper
  include Pagy::Frontend

  def navigation
    # 
    # "name": "path"
    # or
    # "name_a":{
    #   "name_a1":"path_a1"
    # }
    #
    navigation = {
      "Beranda": "root_path",
      "Lapang":{
        "List Lapang":"fields_path",
        "Jenis Lapang":"field_types_path"
      },
      "Membership": {
        "List Membership": "memberships_path",
        "Jenis Membership": "type_memberships_path",
      },
      "Sewa":"rents_path",
      "Order":{
        "List Order":"orders_path",
        "Pembayaran":"payments_path",
      }
    }
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
    while start <= finish
      hours << start
      start += 1.hours
    end
    return hours
  end
end
