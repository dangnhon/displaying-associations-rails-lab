class Song < ActiveRecord::Base
  belongs_to :artist
  
  def artist_name
    song_artist = Song.all
    song_artist.select do |song| 
      if song.artist.id == self.artist.id
        return song.artist.name 
      end 
    end 
  end 

end
