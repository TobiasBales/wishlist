# typed: strict
# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :person
  has_many :items, dependent: :destroy
end
