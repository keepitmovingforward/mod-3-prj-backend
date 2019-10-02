class Phrase < ApplicationRecord
  has_many :matches

  def self.categories
    Phrase.all.map { |phrase| phrase.category }.uniq!
    # select all the categories from phrases that are unique
  end
end
