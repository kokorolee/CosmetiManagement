class Product < ApplicationRecord
  belongs_to :provider
  has_and_belongs_to_many :contracts
  # has_many :contracts
end
