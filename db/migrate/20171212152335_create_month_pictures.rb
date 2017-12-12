class CreateMonthPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :month_pictures do |t|
      t.string :name
      t.attachment :photo
      t.references :month

      t.timestamps
    end
  end
end
