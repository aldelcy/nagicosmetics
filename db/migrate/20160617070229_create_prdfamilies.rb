class CreatePrdfamilies < ActiveRecord::Migration
  def change
    create_table :prdfamilies do |t|
      t.string :name
      t.string :shortname

      t.timestamps null: false
    end
  end
end
