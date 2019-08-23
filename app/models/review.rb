class Review < ApplicationRecord
    has_and_belongs_to_many :posts
    validates :title, :url, presence: true
    validates :url, uniqueness: true
    before_save :modify_pic

    protected
 
    def modify_pic
        if self.pic && !self.pic.include?("rel=\"nofollow\"")
            self.pic.gsub!(/("_blank")/, "\"_blank\" rel=\"nofollow\"")
        end        
    end
end
