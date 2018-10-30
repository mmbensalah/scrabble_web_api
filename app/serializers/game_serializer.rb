class GameSerializer < ActiveModel::Serializer
  attributes :id

  def total_scores
    binding.pry
    self.plays.map do |play|
      if play.user_id == 1
        play.score
      end
    end.sum
  end
end
