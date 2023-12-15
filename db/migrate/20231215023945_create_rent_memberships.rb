class CreateRentMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :rent_memberships do |t|
      t.references :membership, null: false, foreign_key: true
      t.references :rent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
