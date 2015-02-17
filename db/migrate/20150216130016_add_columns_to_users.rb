class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username,       :string, null: false, default: ""
  	add_column :users, :first_name,     :string, null: false, default: ""
  	add_column :users, :last_name,      :string, null: false, default: ""
  	add_column :users, :signature,      :string, null: false, default: ""
  	add_column :users, :blurb,          :text,   null: false, default: ""
  	add_column :users, :extension,      :string, null: false, default: ""
  	add_column :users, :mobile,         :string, null: false, default: ""
  	add_column :users, :work_days,      :string, null: false, default: ""
  	add_column :users, :home_address,   :string, null: false, default: ""
  	add_column :users, :home_suburb,    :string, null: false, default: ""
  	add_column :users, :home_post_code, :string, null: false, default: ""
  	add_column :users, :kin_contact,    :string, null: false, default: ""
  	add_column :users, :kin_phone,      :string, null: false, default: ""
  	add_column :users, :kin_relation,   :string, null: false, default: ""
    add_column :users, :role,           :string, null: false, default: "standard"
  end
end
