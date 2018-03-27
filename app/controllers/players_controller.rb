class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
  end

  def create
    @player = Player.new(article_params)

    @player.save
    redirect_to @player
  end

  def show
    @player = Player.find(params[:id])
  end

  private

  def article_params
    params.require(:player).permit(:name, :race, :size, :age)
  end
end
