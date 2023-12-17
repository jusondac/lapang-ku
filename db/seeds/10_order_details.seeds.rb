Order.all.pluck(:id).each do |order|
    discount    = order.rent.rent_detail&.membership.discount || 0
    price       = order.rent.field.field_type.price
    hours       = order.rent.rent_detail.hours
    subtotal    = price * hours
    OrderDetail.create(
        order_id: order.id
    )
end