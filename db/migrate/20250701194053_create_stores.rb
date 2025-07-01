# frozen_string_literal: true

class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores, id: :uuid do |t|
      t.integer :store_id
      t.string :adm_user
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :store_host
      t.string :api_address
      t.string :app_code
      t.string :access_token
      t.datetime :access_token_expires_at
      t.string :refresh_token
      t.datetime :refresh_token_expires_at

      t.timestamps
    end
  end
end
