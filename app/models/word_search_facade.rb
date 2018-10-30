class WordSearchFacade

  def initialize(word)
    @word = word
  end

  def examples
    service = OxfordService.new
    examples = service.generate_sentences(@word)
    x = examples[:results][0][:lexicalEntries][0][:sentences].map do |ex|
      if ex[:regions] = ["British"] || ["Canadian"]
        Sentence.new(ex)
      end
    end
  end
end
