class WeaponName < ApplicationRecord
  def self.randomize
    title = Spicy::Proton.new
    translator = Tr4n5l4te::Translator.new
    translator.translate(title.pair(' ').capitalize, :en, :ru)
  end

end
