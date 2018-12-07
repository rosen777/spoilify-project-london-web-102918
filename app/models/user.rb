class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :purchases, through: :userpurchases
 has_secure_password


end
