class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.references :user,        index: true
      t.integer :accessable_id,  index: true
      t.string :accessable_type, null: false, default: ""
      t.string :role,            null: false, default: ""

      t.timestamps
    end
  end
end
