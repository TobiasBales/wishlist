# typed: true
# frozen_string_literal: true

module Bootstrap
  module Form
    class Button < Bootstrap::Component
      def initialize(form:, label:, type: :button, style: :primary)
        super

        @form = form
        @label = label
        @type = type
        @style = style
      end

      def classes
        ["btn-#{@style}"].join(" ")
      end
    end
  end
end
