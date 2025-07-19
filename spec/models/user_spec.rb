# frozen_string_literal: true

require "rails_helper"
RSpec.describe User do
  it "is valid with email and password" do
    user = build(:user)
    expect(user).to be_valid
  end
end
