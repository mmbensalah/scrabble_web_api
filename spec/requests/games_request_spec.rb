require "rails_helper"

describe "Games API" do
  it "returns all items" do
    josh = User.create(id: 1, name: "Josh")
    sal = User.create(id: 2, name: "Sal")

    game = Game.create(id: 1, player_1: josh, player_2: sal)

    get "/api/v1/games/1"

    expect(response).to be_successful
    object = JSON.parse(response.body)
    expect(game.count).to eq(1)
  end
end
