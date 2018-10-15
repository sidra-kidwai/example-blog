class AddCountOfCommentsToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :count_of_comments, :integer
  end
end
