class WeaponName < ApplicationRecord
  def self.randomize(count)
    title = Spicy::Proton.new
    en_results = []
    count.times do
      text = title.format('%a %n of the %n').split(' ').map(&:capitalize).join(' ')
      en_results << text
    end
    translator = Tr4n5l4te::Translator.new
    translator.translate(en_results.join('; '), :en, :ru)
              .split('; ')
  end
end
