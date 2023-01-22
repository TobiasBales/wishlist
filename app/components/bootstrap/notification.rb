# typed: true
# frozen_string_literal: true

module Bootstrap
  class Notification < Component
    def initialize(type:, title:, body: nil)
      super

      @type = type
      @title = title
      @body = body
    end

    ALERT_CLASS = {
      "success" => "alert-success",
      "error" => "alert-danger",
      "notice" => "alert-success",
      "alert" => "alert-danger",
      "warn" => "alert-warn"
    }.freeze

    private

    def classes
      [alert_class(@type)].join(" ")
    end

    def alert_class(type)
      ALERT_CLASS[type]
    end
  end
end
