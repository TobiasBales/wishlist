# typed: strict
# frozen_string_literal: true

module Bootstrap
  class BreadCrumb < Component
    extend T::Sig

    sig { params(crumbs: T::Array[Crumb]).void }
    def initialize(crumbs:)
      super

      @crumbs = crumbs
    end

    sig { returns(T::Array[Crumb]) }
    attr_reader :crumbs
  end
end
