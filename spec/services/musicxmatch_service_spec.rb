require 'rails_helper'

describe MusixmatchService do
  describe "instance methods" do
    it "it exists" do
      musix = MusixmatchService.new("biggie gimme the loot")

      expect(musix).to be_a MusixmatchService
    end

    it "it should return a response in JSON" do
      text = "biggie gimme the loot"
      musix = MusixmatchService.new(text)
      json = musix.get_json("track.search?q=#{text}&apikey=#{ENV['apikey']}")

      expect(json).to be_a Hash
    end

    it "should return search result objects" do
      musix = MusixmatchService.new("biggie gimmie the loot")
      musix.get_search_results

      expect(musix.get_search_results.count).to eq(8)
      expect(musix.get_search_results).to be_a Array
      expect(musix.get_search_results.first).to be_a Result
      expect(musix.get_search_results.first.track).to be_a String
      expect(musix.get_search_results.first.album).to be_a String
      expect(musix.get_search_results.first.artist).to be_a String
    end
  end
end
