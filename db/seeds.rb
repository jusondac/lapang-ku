# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Dir[File.join(Rails.root,"db","seeds","*.rb")].sort.each do |seed|
    puts "seeding - #{seed}. loading seeds, for real"
    load seed
end

field_types_data = [
  { name: 'Type A', price: 100 },
  { name: 'Type B', price: 150 },
  { name: 'Type C', price: 200 },
  # Tambahkan data lainnya sesuai kebutuhan
]

field_types_data.each do |field_type|
    FieldType.create(
      name: field_type[:name],
      price: field_type[:price]
    )
  end