class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :provider
  has_many :receipt_slips
  has_many :contract_details
end
