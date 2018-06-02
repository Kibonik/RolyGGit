class WeaponsController < ApplicationController
  def index
    @weapons = Weapons.all
  end

  def show
  end
end
