class MusixmatchService
  attr_reader :conn, :text
  def initialize(text)
    @text = text
    @conn = Faraday.new(url: "http://api.musixmatch.com/ws/1.1") do |f|
      f.adapter  Faraday.default_adapter
    end
  end

  def get_search_results
    results = get_json("track.search?q=#{text}&apikey=#{ENV['apikey']}")[:message][:body][:track_list]
    # binding.pry
    results.map do |result|
      Result.new(result)
    end
  end

  def get_lyrics(track)
    lyrics = get_json("track.lyrics.get?track_id=#{track}&apikey=#{ENV['apikey']}")
    # binding.pry
  end

  def get_json(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

end
