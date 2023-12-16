Rent.all.each { |r|
    Order.create(
        rent_id: r.id,
        status: rand(0..2),
        payment_id: Payment.all.sample.id
    )
}