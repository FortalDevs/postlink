# frozen_string_literal: true

class Store < ApplicationRecord
  belongs_to :user

  validates :store_id, :adm_user, :store_host, :api_address, :app_code, :access_token, :access_token_expires_at,
    :refresh_token, :refresh_token_expires_at, presence: true
end
