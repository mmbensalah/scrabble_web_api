class FindController < ApplicationController
  def create
    session[:word] = params["word_search"]
    redirect_to "/word-search"
  end
end
