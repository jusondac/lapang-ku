class CreateRentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :rent_details do |t|
      t.time :hours
      t.references :membership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
