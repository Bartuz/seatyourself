class CreateResutarants < ActiveRecord::Migration
  def change
    create_table :resutarants do |t|
      t.references :category
      t.string :location
      t.string :name
      t.text :menu
      t.text :summary
      t.integer :chairs

      t.timestamps
    end
    add_index :resutarants, :category_id
  end
end
