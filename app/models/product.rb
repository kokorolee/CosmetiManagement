class Product < ApplicationRecord
  belongs_to :provider
  has_many :contract_details
  has_many :contracts, :through => :contract_details
end
