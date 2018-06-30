class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new

  end

  def create
    @player = Player.new(article_params)
    if @player.save
      redirect_to new_player_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end


  end

  def show
    @player = Player.find(params[:id])
    cookies[:selected_player] = @player.id
  end

  private

  def article_params
    params.require(:player).permit(:name, :race, :size, :age)
  end
end
