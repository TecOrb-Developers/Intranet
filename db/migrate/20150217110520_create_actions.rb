class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.references :communication, index: true
      t.string :title,        null: false, default: ""
      t.text :description,    null: false, default: ""
      t.integer :assigned_to, index: true
      t.integer :assigned_by, index: true
      t.date :due_date,       null: false
      t.date :date_completed, null: false

      t.timestamps
    end
  end
end
