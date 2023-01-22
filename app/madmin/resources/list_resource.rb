# typed: strict
# frozen_string_literal: true

class ListResource < Madmin::Resource
  extend T::Sig

  attribute :name
  attribute :person
  attribute :items
  attribute :id, form: false
  attribute :created_at, form: false
  attribute :updated_at, form: false

  sig { params(record: List).returns(String) }
  def self.display_name(record)
    record.name
  end

  sig { returns(String) }
  def self.default_sort_column
    "created_at"
  end

  sig { returns(String) }
  def self.default_sort_direction
    "desc"
  end
end
