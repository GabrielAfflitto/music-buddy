class AddTrackToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :track, :string
  end
end
