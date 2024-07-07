module HomeHelper
  def on_book(time)
    rent = Rent.where(start: time)
    rent.blank? ? "bg-green-400 hover:bg-green-200" : "bg-red-400 hover:bg-red-200"
  end

  def is_now?(date, parameter)
    
  end
end
