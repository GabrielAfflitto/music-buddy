class LyricsController < ApplicationController

  def show
    @song = MusixmatchService.new(params[:track]).get_lyrics
  end

end
