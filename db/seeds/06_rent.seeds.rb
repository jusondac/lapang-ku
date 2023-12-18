date_start = DateTime.now.beginning_of_week
date_finish = DateTime.now.end_of_week

(date_start..date_finish).to_a.each do |date|
  time = "7:00".to_time
  rand(5..10).times.each { |rent_time|
    field = Field.all.sample
    if Rent.not_on_rent(date, field)
      hour = rand(1..4)
      start = Rent.last.blank? ? time : Rent.last.finish
      finish = start + hour.hours
      Rent.create(
        field_id: field.id,
        start: start,
        finish: finish,
        hours: hour,
      )
    end
  }
end

# # RentDetail.all.each do |rd|
# #   field = Field.all.sample
# #   date_now = DateTime.now
# #   start = Rent.last.nil? ? Time.now : Rent.last.finish
# #   finish = start + eval("#{rd.hours}.hours")
# #   Rent.create(
# #     field_id: field.id,
# #     rent_detail_id: rd.id,
# #     start: start,
# #     finish: finish,
# #   )
# # end
