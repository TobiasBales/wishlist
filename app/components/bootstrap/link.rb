# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Link < Bootstrap::Component
    extend T::Sig

    Target = T.type_alias { T.any(String, Symbol, ActiveRecord::Base) }

    sig { params(text: String, to: Target).void }
    def initialize(text:, to:)
      super

      @text = text
      @to = to
    end

    sig { returns(String) }
    attr_reader :text

    sig { returns(Target) }
    attr_reader :to
  end
end
