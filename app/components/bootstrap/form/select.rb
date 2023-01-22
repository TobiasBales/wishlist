# typed: true
# frozen_string_literal: true

module Bootstrap
  module Form
    class Select < Bootstrap::Component
      def initialize(form:, field:, options:, include_blank: true)
        super

        @form = form
        @field = field
        @options = options
        @include_blank = include_blank
      end
    end
  end
end
