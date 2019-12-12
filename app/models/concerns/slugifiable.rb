module Slugifiable
    module InstanceMethods
        def slug
            self.name.downcase.split.join("-")
        end
    end


    module ClassMethods
        def find_by_slug(slug) #extend
            name_from_slug = slug.split("-").join(" ")
            self.where("LOWER(name) = ?", name_from_slug).first
        end
    end

end


