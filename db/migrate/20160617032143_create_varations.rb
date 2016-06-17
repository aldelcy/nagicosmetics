class CreateVarations < ActiveRecord::Migration
  def change
    create_table :varations do |t|
      t.string :name
      t.string :shortname
      t.decimal :price
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
