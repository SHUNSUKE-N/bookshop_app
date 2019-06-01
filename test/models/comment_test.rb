require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @comment = @user.comments.build(body: "I am the walrus")
  end

  test "user id should be present" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "content should be present" do
    @comment.body = "   "
    assert_not @comment.valid?
  end

  test "content should be at most 500 characters" do
    @comment.body = "a" * 500
    assert_not @comment.valid?
  end

end
