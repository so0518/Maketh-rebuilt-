class ChangeNameOptionsToUsers < ActiveRecord::Migration[4.2]

  def up
    change_column :users, :username, :string, null: false, default: ""
  end

  def down
    change_column :users, :username, :string, null: true, default: nil
  end
  
  
end