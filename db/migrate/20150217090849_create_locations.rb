class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name,     null: false, default: ""
      t.string :phone,    null: false, default: ""
      t.string :fax,      null: false, default: ""
      t.string :address,  null: false, default: ""
      t.string :state,    null: false, default: ""
      t.string :postcode, null: false, default: ""
      t.string :email,    null: false, default: ""
      t.references :organisation, index: true

      t.timestamps
    end
  end
end
