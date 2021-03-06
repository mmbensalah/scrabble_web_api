require "rails_helper"

describe "Games API" do
  # it "returns all games" do
  #   josh = User.create(id: 1, name: "Josh")
  #   sal = User.create(id: 2, name: "Sal")
  #
  #   game = Game.create(id: 1, player_1: josh, player_2: sal)
  #
  #   get "/api/v1/games/1"
  #
  #   expect(response).to be_successful
  #   game = JSON.parse(response.body)
  #   expect(game["id"]).to eq(1)
  #   expect(game["player_1_id"]).to eq(1)
  #   expect(game["player_2_id"]).to eq(2)
  # end

  it "returns games w/ scores" do
    josh = User.create(id: 1, name: "Josh")
    sal = User.create(id: 2, name: "Sal")

    game = Game.create(id: 1, player_1: josh, player_2: sal)

    josh.plays.create(game: game, word: "sal", score: 3)
    josh.plays.create(game: game, word: "zoo", score: 12)
    sal.plays.create(game: game, word: "josh", score: 14)
    sal.plays.create(game: game, word: "no", score: 2)

    get "/api/v1/games/1"
    
    expect(game["game_id"]).to eq(1)
    expect(game["scores"][0]["user_id"]).to eq(1)
    expect(game["scores"][0]["score"]).to eq(14)
    expect(game["scores"][1]["user_id"]).to eq(2)
    expect(game["scores"][1]["score"]).to eq(16)
  end
end
# {
#   "game_id":1,
#   "scores": [
#     {
#       "user_id":1,
#       "score":15
#     },
#     {
#       "user_id":2,
#       "score":16
#     }
#   ]
# }
