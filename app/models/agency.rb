class Agency < ApplicationRecord
  belongs_to :area
  has_many :delivery_slips
end
