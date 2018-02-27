require 'rails_helper'

describe "user can save song lyrics" do
  context "when a user looks up song lyrics" do
    it "they should be able to save lyrics to their db" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit root_path
      fill_in :q, with: "Kanye West"
      click_on "Search"

      within(first(".result")) do
        click_on "Lyrics"
      end
      click_on "Favorite"

      expect(user.favorites.count).to eq(1)
    end
  end
end
