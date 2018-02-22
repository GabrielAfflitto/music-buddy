class LyricsController < ApplicationController

  def show
    @conn = Faraday.new(url: "http://api.musixmatch.com/ws/1.1") do |f|
      f.adapter  Faraday.default_adapter
    end
    response = @conn.get("track.lyrics.get?track_id=#{params[:track]}&apikey=#{ENV['apikey']}")
    b = JSON.parse(response.body, symbolize_names: true)[:message][:body][:lyrics]
    @song = Lyrics.new(b)
    # binding.pry
  end

end
