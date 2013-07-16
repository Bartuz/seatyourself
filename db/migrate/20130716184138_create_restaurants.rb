class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.references :category
      t.string :location
      t.string :name
      t.text :menu
      t.text :summary
      t.integer :chairs

      t.timestamps
    end
    add_index :restaurants, :category_id
  end
end
