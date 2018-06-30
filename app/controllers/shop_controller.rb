class ShopController < ApplicationController
  def index
    @weapons = Weapons.all
  end

  def randomize
    @weapons = Weapons.all
    @botiono = 'работает'


  end
end
