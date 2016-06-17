class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :shortname
      t.integer :prdfamily_id

      t.timestamps null: false
    end
  end
end
