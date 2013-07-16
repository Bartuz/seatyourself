class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :user
      t.references :restaurant
      t.string :role

      t.timestamps
    end
    add_index :roles, :user_id
    add_index :roles, :restaurant_id
  end
end
