# typed: strict
# frozen_string_literal: true

module Bootstrap
  module List
    class Item < Bootstrap::Component
      extend T::Sig

      Target = T.type_alias { T.any(String, Symbol, ActiveRecord::Base) }

      sig do
        params(text: T.nilable(String), to: T.nilable(Target), icon: T.nilable(String), disabled: T::Boolean).void
      end
      def initialize(text: nil, to: nil, icon: nil, disabled: false)
        super

        @text = text
        @to = to
        @icon = icon
        @disabled = disabled
      end

      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { returns(T.nilable(Target)) }
      attr_reader :to

      sig { returns(T.nilable(String)) }
      attr_reader :icon

      sig { returns(T::Boolean) }
      attr_reader :disabled

      sig { returns(String) }
      def classes
        classes = []
        classes << "disabled" if disabled

        classes.join(" ")
      end
    end
  end
end
