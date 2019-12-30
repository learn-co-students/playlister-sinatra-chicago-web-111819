class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    def slug
        self.name.parameterize
    end

    def self.find_by_slug(slug)
        found_genre = ''
        self.all.each do |genre|
            if genre.name.parameterize == slug
                # binding.pry
                found_genre = genre
            end
        end

        found_genre
    end
end