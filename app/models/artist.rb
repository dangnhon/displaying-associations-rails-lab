class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        count_song = Song.all
        count_song.length
      end
end
