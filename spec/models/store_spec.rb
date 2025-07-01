# frozen_string_literal: true

require "rails_helper"

RSpec.describe Store do
  subject do
    user = User.create!
    described_class.new(
      store_id: 123,
      adm_user: "admin",
      user: user,
      store_host: "example.com",
      api_address: "https://api.example.com",
      app_code: "ABC123",
      access_token: "token",
      access_token_expires_at: 1.day.from_now,
      refresh_token: "refresh",
      refresh_token_expires_at: 30.days.from_now
    )
  end

  describe "associations" do
    it { is_expected.to belong_to(:user) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:store_id) }
    it { is_expected.to validate_presence_of(:adm_user) }
    it { is_expected.to validate_presence_of(:store_host) }
    it { is_expected.to validate_presence_of(:api_address) }
    it { is_expected.to validate_presence_of(:app_code) }
    it { is_expected.to validate_presence_of(:access_token) }
    it { is_expected.to validate_presence_of(:access_token_expires_at) }
    it { is_expected.to validate_presence_of(:refresh_token) }
    it { is_expected.to validate_presence_of(:refresh_token_expires_at) }
  end
end
