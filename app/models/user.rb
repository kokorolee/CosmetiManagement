class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :area, optional: true
  has_many :contracts
  has_many :receipt_slips

  extend Enumerize
  enumerize :gender, in: [:Male, :Female]
end
