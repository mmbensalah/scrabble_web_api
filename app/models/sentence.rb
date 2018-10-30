class Sentence
  attr_reader :sentence, :region
  def initialize(data)
    @sentence = data[:text]
    @region = data[:regions][0]
  end
end
