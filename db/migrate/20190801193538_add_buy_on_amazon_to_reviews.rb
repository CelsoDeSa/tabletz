class AddBuyOnAmazonToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :buy_on_amazon, :string
  end
end
