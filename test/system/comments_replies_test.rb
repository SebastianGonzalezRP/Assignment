require "application_system_test_case"

class CommentsRepliesTest < ApplicationSystemTestCase
  setup do
    @comments_reply = comments_replies(:one)
  end

  test "visiting the index" do
    visit comments_replies_url
    assert_selector "h1", text: "Comments Replies"
  end

  test "creating a Comments reply" do
    visit comments_replies_url
    click_on "New Comments Reply"

    click_on "Create Comments reply"

    assert_text "Comments reply was successfully created"
    click_on "Back"
  end

  test "updating a Comments reply" do
    visit comments_replies_url
    click_on "Edit", match: :first

    click_on "Update Comments reply"

    assert_text "Comments reply was successfully updated"
    click_on "Back"
  end

  test "destroying a Comments reply" do
    visit comments_replies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comments reply was successfully destroyed"
  end
end
