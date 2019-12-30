class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    def slug
        self.name.parameterize
    end

    def self.find_by_slug(slug)
        found_artist = ''
        self.all.each do |artist|
            if artist.name.parameterize == slug
                # binding.pry
                found_artist = artist
            end
        end

        found_artist
    end

end