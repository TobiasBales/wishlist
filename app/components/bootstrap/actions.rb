# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Actions < Component
    extend T::Sig

    sig do
      params(actions: T::Array[Action]).void
    end
    def initialize(actions:)
      super()

      @actions = actions
    end

    sig { returns(T::Array[Action]) }
    attr_reader :actions

    sig { returns(T.nilable(Action)) }
    def first
      actions.first
    end

    sig { returns(T::Array[Action]) }
    def rest
      actions[1..] || []
    end

    sig { returns(String) }
    def classes
      classes = []

      classes.join(" ")
    end
  end
end
