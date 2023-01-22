# typed: strict
# frozen_string_literal: true

module Bootstrap
  class Gravatar < Bootstrap::Component
    extend T::Sig

    sig { params(email: String).void }
    def initialize(email:)
      super

      @email = email
      hash = Digest::MD5.hexdigest(email)
      @image_url = T.let("https://www.gravatar.com/avatar/#{hash}?s=32", String)
    end

    sig { returns(String) }
    attr_reader :email

    sig { returns(String) }
    attr_reader :image_url
  end
end
