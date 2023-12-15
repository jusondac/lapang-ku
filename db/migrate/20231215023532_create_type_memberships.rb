class CreateTypeMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :type_memberships do |t|
      t.string :name
      t.integer :discount
      t.integer :charge
      t.timestamps
    end
  end
end
