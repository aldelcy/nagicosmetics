class CreateVariationApis < ActiveRecord::Migration
  def change
    create_table :variation_apis do |t|

      t.timestamps null: false
    end
  end
end
