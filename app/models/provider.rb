class Provider < ApplicationRecord
  has_many :products
  has_one :contract
end
