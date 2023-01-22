# typed: false
# frozen_string_literal: true

require "application_system_test_case"

class RegistrationsTest < ApplicationSystemTestCase
  test "signing up" do
    visit sign_up_url

    fill_in "Email", with: "new_user@bales.systems"
    fill_in "Password", with: "Secret6*4*2*"
    fill_in "Password confirmation", with: "Secret6*4*2*"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully"
  end
end
