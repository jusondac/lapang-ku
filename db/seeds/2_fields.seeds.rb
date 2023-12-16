field_data = []
("a".."i").to_a.each { |n|
  field_data << { name: "Lapang #{n}", field_type_id: FieldType.pluck(:id).sample }
}

field_data.each do |n|
  Field.create(
    name: n[:name],
    field_type_id: n[:field_type_id],
  )
end
