class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.references :field, null: false, foreign_key: true
      t.references :rent_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
