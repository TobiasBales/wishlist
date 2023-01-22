# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Card < Component
    extend T::Sig

    Image = T.type_alias { T.any(String, ActiveStorage::VariantWithRecord) }

    sig do
      params(title: T.nilable(String), subtitle: T.nilable(String), text: T.nilable(String),
             image: T.nilable(Image), ratio: String, image_fill: String).void
    end
    # rubocop:disable Metrics/ParameterLists
    def initialize(title: nil, subtitle: nil, text: nil, image: nil, ratio: "16x9", image_fill: "cover")
      super

      @title = title
      @subtitle = subtitle
      @text = text
      @image = image
      @ratio = ratio
      @image_fill = image_fill
    end
    # rubocop:enable Metrics/ParameterLists

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
    attr_reader :ratio

    sig { returns(T.nilable(String)) }
    attr_reader :image_fill

    sig { returns(String) }
    def classes
      [].join(" ")
    end
  end
end
