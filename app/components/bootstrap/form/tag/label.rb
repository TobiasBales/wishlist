# typed: strict
# frozen_string_literal: true

module Bootstrap
  module Form
    module Tag
      class Label < Bootstrap::Component
        extend T::Sig

        sig do
          params(
            form: ActionView::Helpers::FormBuilder,
            field: Symbol,
            style: Symbol,
            label: T.nilable(String)
          ).void
        end
        def initialize(form:, field:, style: :default, label: nil)
          super

          @form = form
          @field = field
          @style = style
          @label = label
        end

        sig { returns(String) }
        def classes
          classes = []
          classes << "form-check-label" if @style == :checkbox

          classes.join(" ")
        end

        sig { returns(ActionView::Helpers::FormBuilder) }
        attr_reader :form

        sig { returns(Symbol) }
        attr_reader :field

        sig { returns(T.nilable(String)) }
        attr_reader :label
      end
    end
  end
end
