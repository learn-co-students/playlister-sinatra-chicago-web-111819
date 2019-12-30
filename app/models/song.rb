class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    def slug
        self.name.parameterize
    end

    def self.find_by_slug(slug)
        found_song = ''
        self.all.each do |song|
            if song.name.parameterize == slug
                found_song = song
            end
        end

        found_song
    end
end