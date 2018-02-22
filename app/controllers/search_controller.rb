class SearchController < ApplicationController

  def index
    @results = MusixmatchService.new(params[:q]).get_search_results
  end

end
