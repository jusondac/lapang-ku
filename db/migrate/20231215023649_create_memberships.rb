class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.string :name
      t.references :type_membership, null: false, foreign_key: true
      t.integer :point

      t.timestamps
    end
  end
end
