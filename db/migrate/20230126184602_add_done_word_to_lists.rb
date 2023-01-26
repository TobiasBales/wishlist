# frozen_string_literal: true

class AddDoneWordToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :done_word, :string
  end
end
