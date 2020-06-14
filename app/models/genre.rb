class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Show.sum("songs", Show.genre)
  end

  def artist_count
    Show.sum("artists", Show.genre)
  end

  def all_artist_names
    Show.where("artists = ?") 
      
  end
end
