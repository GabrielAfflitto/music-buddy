require 'rails_helper'

describe "user can delete favorite tracks" do
  it "a user should be able to delete favorite tracks from dashboard" do
    gabe = create(:user)
    favs = create_list(:favorite, 3, user: gabe)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(gabe)
    visit root_path

    click_on "Dashboard"
    expect(current_path).to eq(dashboard_path)

    within(first(".result")) do
      click_on "Unfavorite"
    end

    expect(current_path).to eq(dashboard_path)
    expect(gabe.favorites.count).to eq 2
  end
end
