require 'rails_helper'

describe "logged out users cannot save songs" do
  context "when a user is not logged in" do
    it "they should not be able to save lyrics" do
      visit root_path
      fill_in :q, with: "kanye west"
      click_on "Search"

      within(first(".result")) do
        click_on "Lyrics"
      end
      expect(page).to_not have_content("Favorite")
    end
  end
end
