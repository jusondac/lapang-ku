45.times do
  Membership.create(
    name: Faker::Name.name,
    type_membership_id: TypeMembership.pluck(:id).sample,
    point: 0,
  )
end
