class Song
  attr_accessor(:name, :artist, :genre)
  @@count=0
  @@artists=[]
  @@genres=[]

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @@artists << artist
      @genre = genre
      @@genres << genre
      @@count+=1
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
      genre_hash=Hash.new(0)
      @@genres.each{|key| genre_hash[key] += 1}
      genre_hash
    end

    def self.artist_count
      artist_hash=Hash.new(0)
      @@artists.each{|key| artist_hash[key] += 1}
      artist_hash
    end

end
