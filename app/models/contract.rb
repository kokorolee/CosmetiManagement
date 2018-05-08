class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :provider
  has_many :import_coupon
  has_many :contract_details
end
