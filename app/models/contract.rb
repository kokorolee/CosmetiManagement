class Contract < ApplicationRecord
  belongs_to :user

  has_many :contract_details
  has_many :products
end
