class ChangeUsers < ActiveRecord::Migration[7.1]
  def change
      remove_column :users, :name 
      remove_column :users, :email 
      add_column :users, :username, :string
      #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
      add_index :users, :username, unique: true
  end
end
