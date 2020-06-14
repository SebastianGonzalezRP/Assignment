require "application_system_test_case"

class LogUpTest < ApplicationSystemTestCase
  setup do
    @log_up = log_up(:one)
  end

  test "visiting the index" do
    visit log_up_url
    assert_selector "h1", text: "Log Up"
  end

  test "creating a Log up" do
    visit log_up_url
    click_on "New Log Up"

    click_on "Create Log up"

    assert_text "Log up was successfully created"
    click_on "Back"
  end

  test "updating a Log up" do
    visit log_up_url
    click_on "Edit", match: :first

    click_on "Update Log up"

    assert_text "Log up was successfully updated"
    click_on "Back"
  end

  test "destroying a Log up" do
    visit log_up_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Log up was successfully destroyed"
  end
end
