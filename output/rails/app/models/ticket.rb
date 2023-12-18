class Ticket < ApplicationRecord
  belongs_to :show

  validates :showId, presence: true
  validates :seat, presence: true
  validates :available, inclusion: { in: [true, false] }
end