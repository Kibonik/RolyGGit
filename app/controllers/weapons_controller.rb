class WeaponsController < ApplicationController
  def index
    @weapons = Weapons.all
  end

  def show; end

  def new
    @weapon_addon = WeaponAddon.new
    @weapon_addon_types = WeaponAddonType.all
  end

  def create
    @weapon_addon = WeaponAddon.new(weapon_addon)
    if @weapon_addon.save
      render 'new'
    else
      render 'new'
    end

  end

  private

  def weapon_addon
    params.require(:weapon_addon).permit(:weapon_addon_type_id, :name,
                                         :dmg, :dist, :clip, :text)
  end
end
