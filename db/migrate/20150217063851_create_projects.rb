class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name,                        null: false, default: ""
      t.references :department,              index: true
      t.text :aim,                           null: false, default: ""
      t.text :description,                   null: false, default: ""
      t.text :audience,                      null: false, default: ""
      t.text :outcomes,                      null: false, default: ""
      t.references :user,                    index: true
      t.string :privacy,                     null: false, default: "public"

      t.timestamps
    end
  end
end