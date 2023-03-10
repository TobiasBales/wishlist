# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
