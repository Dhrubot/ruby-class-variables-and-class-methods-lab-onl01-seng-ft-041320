class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end
    
  def self.genres
    @@genres.uniq
  end
    
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    hash = {}
    @@artists.map do |ele|
      hash[ele]
    end
  end
end