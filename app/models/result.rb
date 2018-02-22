class Result
  attr_reader :track, :artist, :album, :track_id
  def initialize(attrs = {})
    @track = attrs[:track][:track_name]
    @artist = attrs[:track][:artist_name]
    @album = attrs[:track][:album_name]
    @track_id = attrs[:track][:track_id]
  end

end
