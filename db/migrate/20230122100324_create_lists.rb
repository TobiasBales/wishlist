# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists, id: :uuid do |t|
      t.string :name
      t.references :person, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
