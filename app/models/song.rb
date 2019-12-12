class  Song < ActiveRecord::Base
    has_many :song_genre
    has_many :genres, through: :song_genre
    belongs_to :artist
end