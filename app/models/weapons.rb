class Weapons < ApplicationRecord
  require 'active_support/core_ext/string/multibyte'
  def self.type
    @type = WeaponType.all
  end

  def self.category
    @category = WeaponCategory.all
  end

  def self.title
    @title = WeaponName.all
  end

  def self.adjective
    @adjective = WeaponAdjective.all
  end

end
