class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Genre.where("id = ?", self.genre_id).first.name

  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drake = Artist.create(name: "Drake").tap{|drake| drake.songs << self}
  end
end
