class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.integer :field_id, null: false, foreign_key: true
      t.integer :rent_detail_id, null: false, foreign_key: true
      t.datetime :start
      t.datetime :finish
      t.timestamps
    end
  end
end
