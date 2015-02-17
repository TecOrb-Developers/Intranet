class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :user,          index: true
      t.references :communication, index: true
      t.references :category,      index: true
      t.string     :file_type,     null: false, default: ""
      t.string     :file_name,     null: false, default: ""

      t.timestamps
    end
  end
end
