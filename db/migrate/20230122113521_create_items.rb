class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :name, null: false
      t.string :url
      t.boolean :done, null: false, default: false
      t.integer :quantity
      t.references :list, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
