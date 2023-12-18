class Order < ApplicationRecord
  validates :customerId, presence: true
  validates :show, presence: true
  validates :tickets, presence: true
end