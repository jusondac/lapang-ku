class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :total
      t.integer :tax
      t.integer :subtotal
      t.integer :discount
      t.timestamps
    end
  end
end
