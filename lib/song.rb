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
  
  def self.count 
    @@count
  end

  def self.artists 
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
  
    epoch = 0
    count_rap = 0
    count_pop = 0
    count_sd = 0

    while epoch < @@genres.length
    if @@genres[epoch] == @@genres.uniq[0]
      count_rap+=1
    elsif @@genres[epoch] == @@genres.uniq[1]
      count_pop +=1
    elsif @@genres[epoch] == @@genres.uniq[2]
      count_sd +=1
    end
        
    epoch +=1
    end

    epoch_2nd = 0
    genre_total = {}

    genre_total[@@genres.uniq[0]] = count_rap
    genre_total[@@genres.uniq[1]] = count_pop
    #genre_total[@@genres.uniq[2]] = [count_sd]
    
    genre_total

  end
  
  
  def self.artist_count
    epoch = 0
    artist_1 = 0
    artist_2 = 0
    artist_3 = 0

    while epoch < @@artists.length
    if @@artists[epoch] == @@artists.uniq[0]
      artist_1+=1
    elsif @@artists[epoch] == @@artists.uniq[1]
      artist_2 +=1
    elsif @@artists[epoch] == @@artists.uniq[2]
      artist_3 +=1
    end
        
    epoch +=1
    end

    epoch_2nd = 0
    artist_total = {}

    artist_total[@@artists.uniq[0]] = artist_1
    artist_total[@@artists.uniq[1]] = artist_2
    #genre_total[@@genres.uniq[2]] = [count_sd]
    
    artist_total
  end
end