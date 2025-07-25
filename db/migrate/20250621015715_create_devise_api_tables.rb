# frozen_string_literal: true

class CreateDeviseApiTables < ActiveRecord::Migration[8.0]
  def change
    # Use Active Record's configured type for primary and foreign keys
    primary_key_type, foreign_key_type = primary_and_foreign_key_types

    create_table :devise_api_tokens, id: primary_key_type do |t|
      t.belongs_to :resource_owner, null: false, polymorphic: true, index: true, type: foreign_key_type
      t.string :access_token, null: false, index: true
      t.string :refresh_token, null: true, index: true
      t.integer :expires_in, null: false
      t.datetime :revoked_at, null: true
      t.string :previous_refresh_token, null: true, index: true

      t.timestamps
    end
  end

  private

  def primary_and_foreign_key_types
    config = Rails.configuration.generators
    setting = config.options[config.orm][:primary_key_type]
    primary_key_type = setting || :primary_key
    foreign_key_type = setting || :bigint
    [primary_key_type, foreign_key_type]
  end
end
