class DeliverySlip < ApplicationRecord
  belongs_to :agency
  has_many :delivery_slip_details
end
