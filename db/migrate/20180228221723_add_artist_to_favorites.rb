class AddArtistToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :artist, :string
  end
end
