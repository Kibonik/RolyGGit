class ShopController < ApplicationController
  def index
    @weapons = Weapons.all

  end

end
