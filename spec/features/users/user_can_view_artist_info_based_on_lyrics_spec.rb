require 'rails_helper'

describe "user can view artist bio from lyrics page" do
  context "when a user visits a lyrics page" do
    context "and they click the link to view artist info" do
      it "should show a small wikipedia article about the artist" do
        visit root_path
        fill_in :q, with: "biggie gimme the loot"
        click_on "Search"

        within(first(".result")) do
          click_on "Lyrics"
        end

        expect(page).to have_content("Artist Info")
        click_on "Artist Info"

        expect(current_path).to eq(artist_path)
        expect(page).to have_content("The Notorious B.I.G.")
      end
    end
  end
end
