# typed: strict
# frozen_string_literal: true

module Bootstrap
  module List
    class Group < Bootstrap::Component
      extend T::Sig

      sig { params(id: T.nilable(String), flush: T::Boolean).void }
      def initialize(id: nil, flush: false)
        super()

        @id = id
        @flush = flush
      end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { returns(T::Boolean) }
      attr_reader :flush

      sig { returns(String) }
      def classes
        classes = ["list-group"]
        classes << "list-group-flush" if flush

        classes.join(" ")
      end
    end
  end
end
