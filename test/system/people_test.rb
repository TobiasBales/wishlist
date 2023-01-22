# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
    sign_in_as(users(:default))
  end

  test "visiting the index" do
    visit people_url

    assert_selector "li", text: "People"
  end

  test "should create person" do
    visit people_url
    click_on "New person"

    fill_in "Name", with: @person.name
    click_on "Save"

    assert_text "Person was successfully created"
  end

  test "should update Person" do
    visit person_url(@person)
    click_on "Edit person", match: :first

    fill_in "Name", with: @person.name
    click_on "Save"

    assert_text "Person was successfully updated"
  end

  # test "should destroy Person" do
  #   @person = people(:no_lists)
  #   visit person_url(@person)
  #   click_on "Destroy this person", match: :first
  #
  #   assert_text "Person was successfully destroyed"
  # end
end
