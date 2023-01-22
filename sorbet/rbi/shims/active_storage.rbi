# typed: true
# frozen_string_literal: true

module ActiveStorage
  class Attached
    class One
      sig { params(opts: T.any(Symbol, Hash)).returns(T.nilable(ActiveStorage::VariantWithRecord)) }
      def representation(opts); end
    end
  end
end
