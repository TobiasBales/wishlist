# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one)
    sign_in_as(users(:default))
  end

  test "visiting the index" do
    visit lists_url

    assert_selector "li", text: "Lists"
  end

  test "should create list" do
    visit lists_url
    click_on "New list"

    fill_in "Name", with: @list.name
    select @list.person.name, from: "Person"
    click_on "Save"

    assert_text "List was successfully created"
  end

  test "should update List" do
    visit list_url(@list)
    click_on "Edit list", match: :first

    fill_in "Name", with: @list.name
    select @list.person.name, from: "Person"
    click_on "Save"

    assert_text "List was successfully updated"
  end

  # test "should destroy List" do
  #   visit list_url(@list)
  #   click_on "Destroy list", match: :first
  #
  #   assert_text "List was successfully destroyed"
  # end
end
