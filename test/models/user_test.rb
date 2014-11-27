require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "在has_many宏中声明的validate option只在autosave时检查关系对象的validate状态，如果为空，返回true" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    user.posts << post
    assert user.valid?

    post.title = nil
    assert_not post.valid?
    assert_not user.valid?
  end
end
