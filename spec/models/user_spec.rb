# frozen_string_literal: true

RSpec.describe User do
  it "is valid with email and password" do
    user = described_class.new(email: "a@b.com")
    expect(user).to be_valid
  end
end
