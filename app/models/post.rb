class Post < ApplicationRecord
    has_and_belongs_to_many :reviews, -> { order('updated_at desc') }
end
