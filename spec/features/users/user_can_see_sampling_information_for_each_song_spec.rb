# require 'rails_helper'
#
# describe "user can see sampling infomation for each song" do
#   context "when a user looks up lyrics for a song" do
#     context "in addition to seeing lyrics" do
#       it "they should see sampling information for each song" do
#         visit root_path
#
#         fill_in :q, with: "biggie gimme the loot"
#         click_on "Search"
#
#         within(first(".result")) do
#           click_on "Lyrics"
#         end
#
#         expect(current_path).to eq(lyrics_path)
#         expect(page).to have_content("Word is bond")
#         expect(page).to have_content("Sample information for this song")
#       end
#     end
#   end
# end
