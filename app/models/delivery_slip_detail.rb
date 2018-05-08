class DeliverySlipDetail < ApplicationRecord
  belongs_to :product
  belongs_to :delivery_slip
end
