module HomeHelper
  def on_book(time)
    byebug if time.eql?(Time.parse("11:00", Date.parse("23 12 2003")))
    rent = Rent.where(rent_date: time)
    rent.blank? ? "bg-green-200" : "bg-red-200"
  end
end
