class CreateDraftPics < ActiveRecord::Migration[5.1]
  def change
    create_table :draft_pics do |t|
      t.string :pic_file

      t.timestamps
    end
  end
end
