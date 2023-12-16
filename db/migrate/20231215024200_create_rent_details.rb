class CreateRentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :rent_details do |t|
      t.integer :hours
      t.references :membership, null: true, foreign_key: true
      t.string :behalf
      t.timestamps
    end
  end
end
