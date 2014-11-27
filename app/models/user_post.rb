class UserPost < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :user_id, :post, presence: true
end
