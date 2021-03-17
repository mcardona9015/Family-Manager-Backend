class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.belongs_to :photo_album, null: false, foreign_key: true
      t.string :title
      t.boolean :favorite
      t.string :url
      t.string :public_id

      t.timestamps
    end
  end
end
