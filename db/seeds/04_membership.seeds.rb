if Membership.all.blank?
  45.times do
    Membership.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      type_membership_id: TypeMembership.pluck(:id).sample,
      point: 0,
    )
  end
end
