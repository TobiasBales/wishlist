# typed: strict
# frozen_string_literal: true

module Components
  module Lists
    class Show < ApplicationComponent
      extend T::Sig

      sig { params(list: List, active: T::Array[Item], done: T::Array[Item]).void }
      def initialize(list:, active:, done:)
        super()

        @list = list
        @active = active
        @done = done
      end

      sig { returns(List) }
      attr_reader :list

      sig { returns(T::Array[Item]) }
      attr_reader :active

      sig { returns(T::Array[Item]) }
      attr_reader :done
    end
  end
end
