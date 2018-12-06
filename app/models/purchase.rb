class Purchase < ApplicationRecord
  has_many :investments
  has_many :users, through: :userpurchases
end
