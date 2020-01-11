class Review < ApplicationRecord
    has_and_belongs_to_many :posts
    validates :title, :url, presence: true
    validates :url, uniqueness: true
    before_save :modify_pic, :video_time_default

    protected
 
    def modify_pic
        if self.pic && !self.pic.include?("rel=\"nofollow\"")
            self.pic.gsub!(/("_blank")/, "\"_blank\" rel=\"nofollow\"")
        end        
    end

    def video_time_default
        if self.video_start.nil?
            self.video_start = 0
        end
        if self.video_end.nil?
            self.video_end = 0
        end
    end
end
