class WordSearchController < ApplicationController
  def index
    @word = session[:word]
  end
end
