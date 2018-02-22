require 'rails_helper'

describe "User can look up song lyrics" do
  context "when a user fills looks up a song name, lyrics or artist" do
    it "should return all results that meet that criteria" do
      visit root_path

      fill_in :q, with: "eminem my name is"
      click_on "Search"

      expect(current_path).to eq(search_path)
      within(".results") do
        expect(page).to have_css(".track-name")
        expect(page).to have_css(".album-name")
        expect(page).to have_css(".artist-name")
      end

      within(first(".result")) do
        click_on "Lyrics"
      end

      expect(current_path).to eq(lyrics_path)
      expect(page).to have_content("Slim Shady")
      expect(page).to have_css('.lyrics')
      expect(page).to have_css('.copyright')
      expect(page).to have_css('.url')
    end
  end
end
