# frozen_string_literal: true

class AddEnabledToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :enabled, :boolean, null: false, default: false
  end
end
