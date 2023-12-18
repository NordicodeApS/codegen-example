class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :roleEnum, presence: true
end