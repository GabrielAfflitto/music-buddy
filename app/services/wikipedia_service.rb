class WikipediaService
  attr_reader :artist, :response
  def initialize(artist)
    @artist = artist
    @response = Faraday.get("https://en.wikipedia.org/w/api.php?action=parse&page=#{artist}&format=json")
  end

  def get_article
    raw_article = JSON.parse(@response.body, symbolize_names: true)[:parse][:text][:*]
    article = raw_article.html_safe
  end

end
