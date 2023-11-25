class CreateCreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :title, null: false 
      t.string :image_url, null: false
      t.references :artist, null: false
      t.timestamps
    end
    add_index :artworks, [:artist_id, :title], unique: true
    #Ex:- add_index("admin_users", "username")
    add_index :artworks, :image_url, unique: true
    #Ex:- add_index("admin_users", "username")
  end
end
