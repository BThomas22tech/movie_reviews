require 'rails_helper'

RSpec.describe User, type: :model do
  it "return user name for a user" do
    user = User.create(name:"James")

    expect(user.name).to eq "#{user.name}"
  end
end
