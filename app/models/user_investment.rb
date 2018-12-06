class UserInvestment < ApplicationRecord
  belongs_to :investment
  belongs_to :user
end
