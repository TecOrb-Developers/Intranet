class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name,             null: false, default: ""
      t.string :alternate_name,   null: false, default: ""
      t.text   :description,      null: false, default: ""
      t.references :category, index: true

      t.timestamps
    end
  end
end
