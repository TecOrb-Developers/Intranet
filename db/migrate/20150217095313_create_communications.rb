class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.string :title,            null: false, default: ""
      t.string :details,          null: false, default: ""
      t.string :privacy,          null: false, default: "public"
      t.references :department,   index: true
      t.references :project,      index: true
      t.references :organisation, index: true
      t.references :contact,      index: true
      t.references :category,     index: true
      t.references :sub_category, index: true

      t.timestamps
    end
  end
end
