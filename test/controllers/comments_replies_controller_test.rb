require 'test_helper'

class CommentsRepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comments_reply = comments_replies(:one)
  end

  test "should get index" do
    get comments_replies_url
    assert_response :success
  end

  test "should get new" do
    get new_comments_reply_url
    assert_response :success
  end

  test "should create comments_reply" do
    assert_difference('CommentsReply.count') do
      post comments_replies_url, params: { comments_reply: {  } }
    end

    assert_redirected_to comments_reply_url(CommentsReply.last)
  end

  test "should show comments_reply" do
    get comments_reply_url(@comments_reply)
    assert_response :success
  end

  test "should get edit" do
    get edit_comments_reply_url(@comments_reply)
    assert_response :success
  end

  test "should update comments_reply" do
    patch comments_reply_url(@comments_reply), params: { comments_reply: {  } }
    assert_redirected_to comments_reply_url(@comments_reply)
  end

  test "should destroy comments_reply" do
    assert_difference('CommentsReply.count', -1) do
      delete comments_reply_url(@comments_reply)
    end

    assert_redirected_to comments_replies_url
  end
end
