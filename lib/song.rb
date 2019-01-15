class Song
  @@all = []
  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    @@all << self
  end
  def self.all
    @@all
  end
  attr_accessor :artist, :genre, :title
end
