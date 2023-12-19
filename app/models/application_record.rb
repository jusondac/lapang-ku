class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def get_column_names(reject_column = ["created_at", "updated_at"])
    self.class.column_names.reject { |col|
      col.in?(reject_column)
    }
  end

  def get_value_column(col)
    eval("self.#{col}")
  end
end
