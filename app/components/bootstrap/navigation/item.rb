# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Navigation
    class Item < Bootstrap::Component
      extend T::Sig

      Target = T.type_alias { T.any(String, Symbol, ActiveRecord::Base) }

      sig { params(text: String, to: Target, disabled: T::Boolean).void }
      def initialize(text:, to:, disabled: false)
        super()

        @text = text
        @to = to
        @disabled = disabled
      end

      sig { returns(String) }
      attr_reader :text

      sig { returns(Target) }
      attr_reader :to

      sig { returns(T::Boolean) }
      def disabled?
        @disabled
      end

      sig { returns(T::Boolean) }
      def active?
        current_page?(url_for(to))
      end

      sig { returns(String) }
      def classes
        classes = []
        classes << "disabled" if disabled?
        classes << "active" if active?

        classes.join(" ")
      end
    end
  end
end
