class AddPictureUrlToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :picture_url, :string
  end
end
