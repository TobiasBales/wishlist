# typed: strict
# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, presence: true
end
