require 'rails_helper'

describe Play do
  context "Instance methods" do
    context "#score_word" do
      it "scores the word" do
        play_1 = create(:play, word: "assess")
        expect(play_1.score).to eq(6)
      end
    end
  end
end
