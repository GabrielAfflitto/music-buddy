class Lyrics
  attr_reader :lyrics, :copyright, :lyrics_url, :lyrics_id
  def initialize(attrs = {})
    @lyrics_id = attrs[:lyrics_id]
    @lyrics = attrs[:lyrics_body].split("\n")
    @copyright = attrs[:lyrics_copyright]
    @lyrics_url = attrs[:backlink_url]
  end
end
