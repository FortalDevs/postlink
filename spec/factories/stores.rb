# frozen_string_literal: true

FactoryBot.define do
  factory :store do
    store_id { 123 }
    adm_user { "admin" }
    store_host { "example.com" }
    api_address { "https://api.example.com" }
    app_code { "ABC123" }
    access_token { "token" }
    access_token_expires_at { 1.day.from_now }
    refresh_token { "refresh" }
    refresh_token_expires_at { 30.days.from_now }
    user
  end
end
