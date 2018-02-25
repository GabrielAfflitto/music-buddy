FactoryBot.define do
  factory :user do
    provider "google"
    uid "28324723"
    name "Gabriel Afflitto"
    oauth_token "324h45kljh35"
    token_expiration Time.now
  end
end
