if RentDetail.all.blank?
end

unless Rent.all.blank?
  Rent.all.each do |rent|
    compare_data = [
      "Membership.all.sample",
      "",
    ]

    data = eval(compare_data[rand(0..1)])
    RentDetail.create(
      hours: rand(1..4),
      membership_id: data&.id,
      behalf: data.nil? ? Faker::Name.name : data.name,
      rent_id: rent.id,
    )
  end
end
