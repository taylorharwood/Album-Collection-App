class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.integer :year
      t.string :genre
      t.integer :rating

      t.timestamps
    end
  end
end
