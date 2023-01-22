# typed: true
# frozen_string_literal: true

module Madmin
  class ApplicationController < Madmin::BaseController
    before_action :authenticate_admin_user

    def authenticate_admin_user
      session = Session.find_by(id: cookies.signed[:session_token])
      raise ActionController::RoutingError, "Not Found" if session.blank?

      Current.session = session
      raise ActionController::RoutingError, "Not Found" unless Current.user.admin
    end
  end
end
