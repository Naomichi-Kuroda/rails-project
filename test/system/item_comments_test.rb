require "application_system_test_case"

class ItemCommentsTest < ApplicationSystemTestCase
  setup do
    @item_comment = item_comments(:one)
  end

  test "visiting the index" do
    visit item_comments_url
    assert_selector "h1", text: "Item Comments"
  end

  test "creating a Item comment" do
    visit item_comments_url
    click_on "New Item Comment"

    fill_in "Body", with: @item_comment.body
    fill_in "Item", with: @item_comment.item_id
    fill_in "Status", with: @item_comment.status
    fill_in "User", with: @item_comment.user_id
    click_on "Create Item comment"

    assert_text "Item comment was successfully created"
    click_on "Back"
  end

  test "updating a Item comment" do
    visit item_comments_url
    click_on "Edit", match: :first

    fill_in "Body", with: @item_comment.body
    fill_in "Item", with: @item_comment.item_id
    fill_in "Status", with: @item_comment.status
    fill_in "User", with: @item_comment.user_id
    click_on "Update Item comment"

    assert_text "Item comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Item comment" do
    visit item_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item comment was successfully destroyed"
  end
end
