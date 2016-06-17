class CreateCategoryApis < ActiveRecord::Migration
  def change
    create_table :category_apis do |t|

      t.timestamps null: false
    end
  end
end
