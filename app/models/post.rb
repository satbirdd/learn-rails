class Post < ActiveRecord::Base
  has_many :user_posts, validate: true
  has_many :users, through: :user_posts, validate: true

  validates :title, :content, presence: true
end
