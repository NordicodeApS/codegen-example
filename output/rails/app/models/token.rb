class Token < ApplicationRecord
  validates :bearerToken, presence: true
  validates :expireDate, presence: true
end