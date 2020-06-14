class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Show.where("genre = ?", show.first("songs"))
  end

  def song_count
    Show.sum("songs")
  end

  def genre_count
    Show.sum("genre")
  end
end
