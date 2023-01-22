# typed: strict
# frozen_string_literal: true

module ApplicationHelper
  extend T::Sig
  include ActionView::Helpers::CaptureHelper

  sig { params(separator: String).returns(String) }
  def layout_title(separator = " – ")
    [content_for(:title), "Wishlist"].compact.join(separator)
  end

  sig { params(title: String).void }
  def page_title(title)
    content_for(:title) { title }
  end
end
