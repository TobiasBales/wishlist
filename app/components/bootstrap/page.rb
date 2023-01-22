# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Page < Bootstrap::Component
    extend T::Sig

    sig { params(title: T.nilable(String), actions: T::Array[Action], crumbs: T::Array[BreadCrumb]).void }
    def initialize(title: nil, actions: [], crumbs: [])
      super()

      @actions = actions
      @crumbs = crumbs
      @title = title
    end

    sig { returns(T::Array[Action]) }
    attr_reader :actions

    sig { returns(T::Array[BreadCrumb]) }
    attr_reader :crumbs

    sig { returns(T.nilable(String)) }
    attr_reader :title
  end
end
