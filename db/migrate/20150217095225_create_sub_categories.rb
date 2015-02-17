class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.references :category, index: true
      t.string :name,         null: false, default: ""

      t.timestamps
    end
  end
end
