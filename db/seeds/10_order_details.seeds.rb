Order.all.each do |order|
  rent_detail = order.rent.rent_detail
  membership = rent_detail.membership_id? ? rent_detail.membership : nil
  discount = membership ? membership.type_membership.discount : 0
  price = order.rent.field.field_type.price
  hours = order.rent.hours
  subtotal = price * hours
  discount = (discount.to_f / 100) * subtotal
  total = (subtotal - discount) + tax
  OrderDetail.create(
    order_id: order.id,
    total: total,
    tax: tax,
    subtotal: subtotal,
    discount: discount,
  )
end
