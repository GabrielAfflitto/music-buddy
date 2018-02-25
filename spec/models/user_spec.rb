require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates or updates itself from a user hash" do
    auth = {
      provider: "google_oauth2",
      uid: "1234567",
      info: {
        name: "Gabriel Afflitto"
      },
      credentials: {
        oauth_token: "a3jh34jh5g34gjj4hg35jh",
        token_expiration: Time.now
      }
    }

    User.from_omniauth(auth)
    new_user = User.first
    expect(new_user.uid).to eq("1234567")
    expect(new_user.name).to eq("Gabriel Afflitto")
    expect(new_user.provider).to eq("google_oauth2")
  end
end
