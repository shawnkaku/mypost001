class Post < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  has_many :comment, foreign_key: :post_id
  has_many :categories, through: :post_categories, foreign_key: :category_id, :class_name => 'Category'
  has_many :post_categories, foreign_key: :post_id
end