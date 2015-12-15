class Comment < ActiveRecord::Base
  belongs_to :users, foreign_key: :user_id
  belongs_to :posts, foreign_key: :post_id
end
