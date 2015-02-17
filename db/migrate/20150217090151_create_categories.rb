class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_type,    null: false, default: ""
      t.string :name,             null: false, default: ""

      t.timestamps
    end
  end
end
