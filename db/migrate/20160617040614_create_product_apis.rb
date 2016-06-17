class CreateProductApis < ActiveRecord::Migration
  def change
    create_table :product_apis do |t|

      t.timestamps null: false
    end
  end
end
