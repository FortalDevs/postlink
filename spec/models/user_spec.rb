RSpec.describe User, type: :model do
  it "is valid with email and password" do
    user = User.new(email: "a@b.com")
    expect(user).to be_valid
  end
end
