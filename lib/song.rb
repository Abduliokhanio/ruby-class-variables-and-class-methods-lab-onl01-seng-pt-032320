class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    
    
    @@artists << @artist
    @@genres << @genre
    
    @@count +=1
  end
  
  def count 
    @@count
  end

  def artist 
    @artist
  end
end