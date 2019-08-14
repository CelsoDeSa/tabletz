class AddDetailsToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :device, :string
    add_column :reviews, :backlight, :string
    add_column :reviews, :touchscreen, :string
    add_column :reviews, :colors, :string
    add_column :reviews, :connection, :string
    add_column :reviews, :cpu, :string
    add_column :reviews, :extras, :string
  end
end
