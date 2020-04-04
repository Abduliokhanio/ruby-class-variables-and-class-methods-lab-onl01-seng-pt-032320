class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@artist = []
    @@artist << @artist
    
    @@count +=1
  end
  
  def count 
    @@count
  end

  def artist 
    @artist
  end

  def artist_all 
    @@artist
  end
end