class Contract < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :products
  has_many :import_coupon
end
