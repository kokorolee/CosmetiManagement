class Product < ApplicationRecord
  belongs_to :provider
  belongs_to :category

  extend Enumerize

  enumerize :unit, in: [:set, :bottle, :pack, :box, :piece, :lipstick]
end
