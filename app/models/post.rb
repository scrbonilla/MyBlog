class Post < ActiveRecord::Base

    scope :most_recent, -> {limit(10).order('published_at desc')}

    validates :subject, presence: true, uniqueness: true
    validates :body, presence: true, uniqueness: true

    def self.search(query)
        where("subject like ?", "%#{query}%")
    end
end


