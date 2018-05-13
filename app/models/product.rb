class Product < ApplicationRecord
  belongs_to :provider
  belongs_to :catelogy
end
