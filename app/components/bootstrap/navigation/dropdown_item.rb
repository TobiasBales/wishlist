# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Navigation
    class DropdownItem < Bootstrap::Component
      extend T::Sig

      Target = T.type_alias { T.any(String, Symbol, ActiveRecord::Base) }

      sig { params(text: String, to: Target, method: T.nilable(Symbol), classes: T.nilable(String)).void }
      def initialize(text:, to:, method: nil, classes: nil)
        super()

        @text = text
        @to = to
        @method = method
        @classes = classes
      end

      sig { returns(String) }
      attr_reader :text

      sig { returns(Target) }
      attr_reader :to

      sig { returns(T.nilable(Symbol)) }
      attr_reader :method

      sig { returns(String) }
      def classes
        classes = []
        classes << @classes if @classes.present?

        classes.join(" ")
      end
    end
  end
end
