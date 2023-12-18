class Show < ApplicationRecord
    belongs_to :category
    validates :name, presence: true
    validates :description, presence: true
    validates :date, presence: true
end