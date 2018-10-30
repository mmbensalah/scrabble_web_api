class WordSearchController < ApplicationController
  def index
    word = session[:word]
    service = OxfordService.new
    @examples = service.generate_sentences(word)
  end
end
