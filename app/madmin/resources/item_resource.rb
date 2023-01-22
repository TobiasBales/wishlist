# typed: strict
# frozen_string_literal: true

class ItemResource < Madmin::Resource
  extend T::Sig

  attribute :name
  attribute :url
  attribute :done
  attribute :quantity
  attribute :image, index: false
  attribute :list
  attribute :id, form: false
  attribute :created_at, form: false
  attribute :updated_at, form: false

  sig { params(record: Item).returns(String) }
  def self.display_name(record)
    "#{record.name} - #{record.list&.name}"
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
