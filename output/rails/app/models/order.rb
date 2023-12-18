class Order < ApplicationRecord
  belongs_to :show
  belongs_to :customer

  validates :showId, presence: true
  validates :customerId, presence: true
end