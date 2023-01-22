# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Icon < Component
    extend T::Sig

    sig { params(icon: String).void }
    def initialize(icon:)
      super()

      @icon = icon
    end

    sig { returns(String) }
    attr_reader :icon
  end
end
