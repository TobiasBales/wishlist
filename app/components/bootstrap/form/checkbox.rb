# typed: true
# frozen_string_literal: true

module Bootstrap
  module Form
    class Checkbox < Bootstrap::Component
      def initialize(form:, field:)
        super

        @form = form
        @field = field
      end
    end
  end
end
