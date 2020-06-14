class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Show.where("genre = ?", Show.first("songs"))
  end

  def song_count
    Show.sum("songs", Show.artist)
  end

  def genre_count
    Show.sum("genre", Show.artist)
  end
end
