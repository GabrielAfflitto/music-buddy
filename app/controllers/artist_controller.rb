class ArtistController < ApplicationController

  def show
    artist_name = params[:artist]
    if artist_name.include?(" ")
      artist_name = artist_name.split.join("_")
    end
    @artist = WikipediaService.new(artist_name).get_article
  end

end
