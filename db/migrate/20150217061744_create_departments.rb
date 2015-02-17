class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name,     null: false, default: ""
      t.text :blurb,      null: false, default: ""
      t.string :privacy,  null: false, default: ""
      t.references :user, index: true

      t.timestamps
    end
  end
end
