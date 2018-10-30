class GameSerializer < ActiveModel::Serializer
  attributes :game_id, :scores


  def game_id
    self.object.id
  end

  def scores
    self.object.plays.map do |play|
        play.score
      end.sum
  end


  # self.object.plays.map do |play|
  #     if play.user_id == 2
  #       play.score
  #     end.sum
  #   end


end
