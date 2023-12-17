RentDetail.all.each do |rd|
  field = Field.all.sample
  date_now = DateTime.now
  start = Rent.last.nil? ? Time.now : Rent.last.finish
  finish = start + eval("#{rd.hours}.hours")
  Rent.create(
    field_id: field.id,
    rent_detail_id: rd.id,
    start: start,
    finish: finish,
  )
end

# RentDetail.all.each do |rental_detail|
  
# end