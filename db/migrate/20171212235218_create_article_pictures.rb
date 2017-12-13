class CreateArticlePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :article_pictures do |t|
      t.string :name
      t.attachment :photo
      t.references :article

      t.timestamps
    end
  end
end
