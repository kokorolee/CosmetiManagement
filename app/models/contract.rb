class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :provider
  has_many :import_coupon
end
