class Post < ActiveRecord::Base
    scope :most_recent, -> {limit(10).order('published_at desc')}
    def self.search(query)
        where("subject like ?", "%#{query}%")
    end
end


