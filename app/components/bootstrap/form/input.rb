# typed: strict
# frozen_string_literal: true

module Bootstrap
  module Form
    class Input < Bootstrap::Component
      extend T::Sig

      sig do
        params(
          form: ActionView::Helpers::FormBuilder,
          field: Symbol,
          type: Symbol,
          autofocus: T::Boolean,
          multiple: T::Boolean,
          autocomplete: T.nilable(String),
          required: T::Boolean,
          hint: T.nilable(String),
          label: T.nilable(String)
        ).void
      end
      # rubocop:disable Metrics/ParameterLists
      def initialize(form:, field:, type: :text, autofocus: false, multiple: false, autocomplete: nil, required: false,
                     hint: nil, label: nil)
        super()

        @form = form
        @field = field
        @type = type
        @autofocus = autofocus
        @multiple = multiple
        @autocomplete = autocomplete
        @required = required
        @hint = hint
        @label = label
      end
      # rubocop:enable Metrics/ParameterLists

      sig { returns(ActionView::Helpers::FormBuilder) }
      attr_reader :form

      sig { returns(Symbol) }
      attr_reader :field

      sig { returns(Symbol) }
      attr_reader :type

      sig { returns(T::Boolean) }
      attr_reader :autofocus

      sig { returns(T::Boolean) }
      attr_reader :multiple

      sig { returns(T.nilable(String)) }
      attr_reader :autocomplete

      sig { returns(T::Boolean) }
      attr_reader :required

      sig { returns(T.nilable(String)) }
      attr_reader :hint

      sig { returns(T.nilable(String)) }
      attr_reader :label
    end
  end
end
