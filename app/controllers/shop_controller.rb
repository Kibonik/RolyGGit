class ShopController < ApplicationController
  def index
    @weapons = Weapons.all
  end

  def randomize
    @random_weapon = rand(10)
  end
end
