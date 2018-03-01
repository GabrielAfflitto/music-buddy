class FavoritesController < ApplicationController

  def create
    if current_user
      @favorite = current_user.favorites.new(artist: params[:artist], lyrics_id: params[:track_id], track: params[:track_name])
      @favorite.save!
      flash[:notice] = "Lyrics Saved!"
    end
  end

end
