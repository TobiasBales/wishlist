# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Card < Component
    extend T::Sig

    Image = T.type_alias { T.any(String, ActiveStorage::VariantWithRecord) }

    sig do
      params(title: T.nilable(String), subtitle: T.nilable(String), text: T.nilable(String),
             image: T.nilable(Image)).void
    end
    def initialize(title: nil, subtitle: nil, text: nil, image: nil)
      super

      @title = title
      @subtitle = subtitle
      @text = text
      @image = image
    end

    renders_one :body

    sig { returns(T.nilable(String)) }
    attr_reader :title

    sig { returns(T.nilable(String)) }
    attr_reader :subtitle

    sig { returns(T.nilable(Image)) }
    attr_reader :image

    sig { returns(T.nilable(String)) }
    attr_reader :text

    sig { returns(String) }
    def classes
      [].join(" ")
    end
  end
end
