# typed: strict
# frozen_string_literal: true

module Components
  module Items
    class New < ApplicationComponent
      extend T::Sig

      sig { params(list: List, item: Item).void }
      def initialize(list:, item:)
        super()

        @list = list
        @item = item
      end

      sig { returns(List) }
      attr_reader :list

      sig { returns(Item) }
      attr_reader :item
    end
  end
end
