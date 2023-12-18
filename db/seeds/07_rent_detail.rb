if RentDetail.all.blank?
  compare_data = [
    "Membership.all.sample",
    "",
  ]
  27.times {
    data = eval(compare_data[rand(0..1)])
    RentDetail.create(
      hours: rand(1..4),
      membership_id: data&.id,
      behalf: data.nil? ? Faker::Name.name : data.name
    )
  }
end
