# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Navigation
    class Dropdown < Bootstrap::Component
      extend T::Sig

      sig { params(text: String, classes: T.nilable(String)).void }
      def initialize(text:, classes: nil)
        super()

        @text = text
        @classes = classes
      end

      sig { returns(String) }
      attr_reader :text

      sig { returns(String) }
      def classes
        classes = []
        classes << @classes if @classes.present?

        classes.join(" ")
      end
    end
  end
end
