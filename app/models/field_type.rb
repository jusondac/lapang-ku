class FieldType < ApplicationRecord
  def get_column_names
    reject_column = ["created_at", "updated_at", "id"]
    super(reject_column)
  end

  def get_value_column(col)
    super(col)
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)        
  end
end
