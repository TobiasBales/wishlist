# typed: strict
# frozen_string_literal: true

module Bootstrap
  module Form
    module Tag
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
            required: T::Boolean
          ).void
        end
        # rubocop:disable Metrics/ParameterLists
        def initialize(form:, field:, type:, autofocus:, multiple:, autocomplete:, required:)
          super

          @form = form
          @field = field
          @type = type
          @autofocus = autofocus
          @multiple = multiple
          @autocomplete = autocomplete
          @required = required
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
      end
    end
  end
end
