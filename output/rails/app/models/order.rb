class Order < ApplicationRecord
  belongs_to :customer
  validates :show, presence: true
  validates :tickets, presence: true
end