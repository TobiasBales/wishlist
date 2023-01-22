# frozen_string_literal: true

class CreateEmailVerificationTokens < ActiveRecord::Migration[7.0]
  def change
    # rubocop:disable Rails/CreateTableWithTimestamps
    create_table :email_verification_tokens, id: :uuid do |t|
      t.references :user, type: :uuid, null: false, foreign_key: true
    end
    # rubocop:enable Rails/CreateTableWithTimestamps
  end
end
