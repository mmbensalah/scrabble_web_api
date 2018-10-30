class WordSearchController < ApplicationController
  def index
    @word = session[:word]
    facade = WordSearchFacade.new(@word)
    @examples = facade.examples
    # service = OxfordService.new
    # @examples = service.generate_sentences(word)
  end
end
