class WelcomeController < ApplicationController
  def index
    @players = Player.all
    if cookies[:selected_player]
      redirect_to player_path(cookies[:selected_player])
    end
  end
end
