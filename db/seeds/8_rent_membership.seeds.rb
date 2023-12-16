RentDetail.all.each do |rd|
  unless rd.membership_id.nil?
    RentMembership.create(
      membership_id: rd.membership_id,
      rent_id: rd.rent.id,
    )
  end
end
