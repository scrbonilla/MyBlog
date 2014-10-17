class Post < ActiveRecord::Base
    scope :most_recent, -> {limit(10).order('published_at desc')}
    def self.search(q)
       Post.where(['body LIKE ? OR subject LIKE ?', "%#{q}%", "%#{q}%"])
    end
end

