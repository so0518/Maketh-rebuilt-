class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.integer :gender
      t.integer :ref_price
      t.string :explanation
      t.integer :category

      t.timestamps
    end
  end
end
