class CreatePasswordResetTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :password_reset_tokens, id: :uuid do |t|
      t.references :user, type: :uuid, null: false, foreign_key: true
    end
  end
end
