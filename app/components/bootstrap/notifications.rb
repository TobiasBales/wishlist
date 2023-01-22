# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Notifications < Component
    extend T::Sig

    sig { params(flash: ActionDispatch::Flash::FlashHash).void }
    def initialize(flash:)
      super

      @flash = flash
    end

    sig { returns(ActionDispatch::Flash::FlashHash) }
    attr_reader :flash
  end
end
