compare_data = [
  "Membership.all.sample",
  "",
]
puts "rent detail is being generated!"
27.times {
  data = eval(compare_data[rand(0..1)])
  puts "data: #{data&.id || "nil"} == generate faker: #{data.nil?}"
  RentDetail.create(
    hours: rand(1..4),
    membership_id: data&.id,
    behalf: data.nil? ? Faker::Name.name : data.name,
  )
}
