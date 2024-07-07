class CreateRentMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :rent_memberships do |t|
      t.integer :membership_id, null: false
      t.integer :rent_id, null: false

      t.timestamps
    end
  end
end
