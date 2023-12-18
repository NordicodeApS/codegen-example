class Show < ApplicationRecord
  has_many :tickets

  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :date, presence: true
end