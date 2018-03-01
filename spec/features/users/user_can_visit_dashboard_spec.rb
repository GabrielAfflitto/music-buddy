require 'rails_helper'

describe "user can visit dashboard path" do
  context "when a user is logged in" do
    it "they should be able to visit their show/dahboard path" do
      gabe = create(:user)
      favs = create_list(:favorite, 3, user: gabe)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(gabe)
      visit root_path

      expect(page).to have_content("Dashboard")
      click_on "Dashboard"

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_css(".favorites")
      expect(page).to have_content(favs.first.track)
      expect(page).to have_content(favs.last.artist)
      expect(page).to have_content("Lyrics")
    end
  end
end
