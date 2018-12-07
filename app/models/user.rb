class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :user_investments
  has_many :investments, through: :user_investments
 has_secure_password


end
