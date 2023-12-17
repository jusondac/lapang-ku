if Payment.all.blank?
  payments_data = [
    { name: "Cash" },
    { name: "Dana" },
    { name: "Ovo" },
    { name: "Gopay" },
    { name: "Shopay" },
    { name: "Debit" },
    { name: "Bank Transfer" },
  ]

  payments_data.each do |field_type|
    Payment.create(
      name: field_type[:name],
    )
  end
end
