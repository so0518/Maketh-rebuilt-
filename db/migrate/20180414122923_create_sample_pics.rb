class CreateSamplePics < ActiveRecord::Migration[5.1]
  def change
    create_table :sample_pics do |t|
      t.string :pic_file

      t.timestamps
    end
  end
end
