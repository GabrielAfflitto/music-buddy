require 'rails_helper'

describe WikipediaService do
  describe "instance methods" do
    it "it exists" do
      wiki = WikipediaService.new("California")

      expect(wiki).to be_a WikipediaService
    end

    it "it returns a response from api for valid input" do
      wiki = WikipediaService.new("California")

      expect(wiki.response.status).to eq(200)
    end

    it "it should get the raw article in html form" do
      wiki = WikipediaService.new("California")
      wiki.get_article

      expect(wiki.get_article).to include("California")
      expect(wiki.get_article).to include("div")
    end
  end
end
