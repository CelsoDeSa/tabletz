class AddHighlightsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :highlights, :text
  end
end
