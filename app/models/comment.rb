class Comment < ActiveRecord::Base
  belongs_to :user, validate: true
  belongs_to :reference

  validates :user_id, :content, presence: true
end
