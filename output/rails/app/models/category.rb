class Category < ApplicationRecord
  has_many :shows

  validates :name, presence: true
  validates :description, presence: true
end