class Customer < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :createdDate, presence: true
end