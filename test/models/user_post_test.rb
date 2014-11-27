require 'test_helper'

class UserPostTest < ActiveSupport::TestCase
  # TODO diff
  # has_many :users, validate: true AND
  # validates_associated :users AND
  # validates :users, presence: true AND
  # validates :user_id, presence: true

  test "presence验证，验证association对象时，会检查对应id，和对应的对象的存在" do
    user_post = FactoryGirl.create(:user_post)
    assert user_post.valid?

    post = user_post.post
    post.destroy

    # reload to clear cache
    user_post.reload
    assert_not user_post.valid?
  end

  test "presence验证，验证association_id时，会检查对应id，但是不会检验对应的对象的存在" do
    user_post = FactoryGirl.create(:user_post)
    assert user_post.valid?

    user = user_post.user
    user.destroy

    # reload to clear cache
    user_post.reload
    assert user_post.valid?
  end
end
