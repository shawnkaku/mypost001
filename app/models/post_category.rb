class PostCategory < ActiveRecord::Base
  belongs_to :categories, foreign_key: :category_id, :class_name => 'Category'
  belongs_to :posts, foreign_key: :post_id, :class_name => 'Post'
end
