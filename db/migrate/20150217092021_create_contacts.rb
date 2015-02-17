class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string     :first_name,   null: false, default: ""
      t.string     :surname,      null: false, default: ""
      t.string     :email,        null: false, default: ""
      t.string     :phone,        null: false, default: ""
      t.string     :mobile,       null: false, default: ""
      t.references :category,     index: true

      t.timestamps
    end
  end
end
