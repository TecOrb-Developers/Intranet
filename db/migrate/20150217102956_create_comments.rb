class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user,          index: true
      t.references :communication, index: true
      t.text :content,             null: false, default: ""

      t.timestamps
    end
  end
end
