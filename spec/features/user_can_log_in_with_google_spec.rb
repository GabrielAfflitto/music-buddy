# require 'rails_helper'
#
# RSpec.feature "user can log in with google oauth" do
#   def stub_omniauth
#     OmniAuth.config.test_mode = true
#     OmniAuth.config.mock_auth[:google] =
#       OmniAuth::AuthHash.new({
#         provider: "google",
#         uid: "122313",
#         info: {
#           name: "Gabriel Afflitto",
#         },
#         credentials: {
#           token: "4k3j5h34kj2h234kjh34",
#           expires_at: Time.now
#         }
#       })
#   end
#
#   before :each do
#     stub_omniauth
#     # binding.pry
#   end
#
#   it "it should allow user to log in" do
#     visit root_path
#     expect(page).to have_content("Sign in with Google")
#     click_on "Sign in with Google"
#     expect(page).to have_content("Signed in as Gabriel Afflitto")
#     expect(page).to have_content("Logout")
#   end
# end
