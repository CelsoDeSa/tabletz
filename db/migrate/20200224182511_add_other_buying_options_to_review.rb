class AddOtherBuyingOptionsToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :buy_on_americanas, :string
    add_column :reviews, :buy_on_submarino, :string
    add_column :reviews, :buy_on_shoptime, :string
    add_column :reviews, :buy_on_magalu, :string
  end
end
