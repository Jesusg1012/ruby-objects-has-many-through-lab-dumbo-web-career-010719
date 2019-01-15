class Artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  attr_reader :name
  def self.all
    @@all
  end

  def new_song(title, genre)
    Song.new(title, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
  def genres
    songs.map(&:genre)
  end
end
