class API::V1::GamesController < ApplicationController
  def show
    def show
      render json: Game.find(params[:id])
  end
end
