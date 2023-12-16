field_types_data = [
  { name: "Badminton-A", price: 40000 },
  { name: "Badminton-B", price: 35000 },
  { name: "Badminton-C", price: 30000 },
  { name: "Futsal-A", price: 50000 },
  { name: "Futsal-B", price: 45000 },
  { name: "Futsal-C", price: 40000 },
  { name: "Futsal-D", price: 30000 },
]

field_types_data.each do |field_type|
  FieldType.create(
    name: field_type[:name],
    price: field_type[:price],
  )
end