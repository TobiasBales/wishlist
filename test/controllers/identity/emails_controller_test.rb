# typed: true
# frozen_string_literal: true

require "test_helper"

module Identity
  class EmailsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @user = sign_in_as(users(:default))
    end

    test "should get edit" do
      get edit_identity_email_url

      assert_response :success
    end

    test "should update email" do
      patch identity_email_url, params: { email: "new_email@bales.systems" }

      assert_redirected_to root_url
    end
  end
end
