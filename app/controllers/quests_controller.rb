class QuestsController < ApplicationController

  before_action :set_quest, only: [:show, :delete_player]
  before_action :set_player, only: [:create, :delete_player]
  before_action :set_player_selected, only: [:index, :show]

  def index
    @quests = Quest.all
  end

  def create
    @quest = @player.quests.create(quest_params)
    redirect_to player_path(@player)
  end

  def show
  end

  def delete_player
    @quest.players.delete(@player)
    redirect_to quests_path
  end

  private

  def quest_params
    params.require(:quest).permit(:title, :body)
  end

  def set_quest
    @quest = Quest.find(params[:id])
  end

  def set_player
    @player = Player.find(params[:player_id])
  end

  def set_player_selected
    @player = Player.find(cookies[:selected_player])
  end

end
