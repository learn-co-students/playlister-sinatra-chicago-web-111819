class  Genre < ActiveRecord::Base
    has_many :song_genre
    has_many :songs, through: :song_genre
    has_many :artists
end