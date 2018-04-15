class ChangeNameOptionsToUsers < ActiveRecord::Migration
  def up
    change_column :users, :username, :string, null: false, default: ""
  end

  def down
    change_column :users, :username, :string, null: true, default: nil
  end
  
  add_index :users, :username, unique: true
  
end