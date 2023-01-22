class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions, id: :uuid do |t|
      t.references :user, type: :uuid, null: false, foreign_key: true
      t.string :user_agent
      t.string :ip_address

      t.timestamps
    end
  end
end
