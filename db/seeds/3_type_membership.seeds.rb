type_membership_data = [
  { name: "Basic", discount: 5, charge: 100000 },
  { name: "Premium", discount: 10, charge: 120000 },
  { name: "Gold", discount: 15, charge: 140000 },
]

type_membership_data.each do |field_type|
  TypeMembership.create(
    name: field_type[:name],
    discount: field_type[:discount],
    charge: field_type[:charge],
  )
end
