class CreatePostsReviewsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :reviews do |t|
      t.index :post_id
      t.index :review_id
    end
  end
end
