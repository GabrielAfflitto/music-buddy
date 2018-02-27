class ArtistController < ApplicationController

  def show
    artist_name = params[:artist]
    if artist_name.include?(" ")
      artist_name = artist_name.split.join("_")
    end
    response = Faraday.get("https://en.wikipedia.org/w/api.php?action=parse&page=#{artist_name}&format=json")
    b = JSON.parse(response.body, symbolize_names: true)[:parse][:text][:*]
    @artist = b.html_safe
  end

end
