# typed: strict
# frozen_string_literal: true

class Item < ApplicationRecord
  extend T::Sig
  include ActionView::Helpers::AssetTagHelper

  belongs_to :list
  has_one_attached :image

  validates :image, blob: { content_type: :image }

  sig { returns(T.any(String, T.nilable(ActiveStorage::VariantWithRecord))) }
  def preview_or_placeholder
    return image_path("transparent.png") unless image.attached?

    image.representation({ resize_to_limit: [350, 350] })
  end
end
