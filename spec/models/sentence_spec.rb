require 'rails_helper'

RSpec.describe Sentence, type: :model do
  it 'exists' do
  example = Sentence.new({text: "fjkal", regions: "fjdka"})

  expect(example).to be_a(Sentence)
end
end
