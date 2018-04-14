class CreateDrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :drafts do |t|
      t.string :name
      t.integer :gender
      t.integer :expected_price
      t.string :explanation
      t.integer :category
      t.integer :bookmark

      t.timestamps
    end
  end
end
