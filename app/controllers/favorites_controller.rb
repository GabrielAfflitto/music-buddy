class FavoritesController < ApplicationController

  def create
    if current_user
      @favorite = current_user.favorites.new(lyrics_id: params[:track_id])
      @favorite.save!
      flash[:notice] = "Lyrics Saved!"
    end
  end

end
