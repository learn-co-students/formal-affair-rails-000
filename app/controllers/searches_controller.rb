class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    render nothing: true
  end

end
