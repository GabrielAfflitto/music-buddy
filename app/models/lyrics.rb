class Lyrics
  attr_reader :lyrics, :copyright, :lyrics_url
  def initialize(attrs = {})
    @lyrics = attrs[:lyrics_body].split("\n")
    @copyright = attrs[:lyrics_copyright]
    @lyrics_url = attrs[:backlink_url]
  end
end
