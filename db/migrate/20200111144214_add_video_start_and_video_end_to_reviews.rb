class AddVideoStartAndVideoEndToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :video_start, :integer
    add_column :reviews, :video_end, :integer
  end
end
