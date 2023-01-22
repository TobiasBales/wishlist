# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Navigation < Bootstrap::Component
    extend T::Sig

    renders_many :right_items
  end
end
