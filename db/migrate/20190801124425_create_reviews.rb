class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :url
      t.string :video
      t.string :pic
      t.integer :rating
      t.text :pros
      t.text :cons
      t.text :summary
      t.text :description
      t.string :os
      t.string :camera
      t.string :storage
      t.string :display
      t.string :resolution
      t.string :battery
      t.string :ram
      t.string :weight

      t.timestamps
    end
  end
end
