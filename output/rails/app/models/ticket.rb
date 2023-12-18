class Ticket < ApplicationRecord
    validates :seat, presence: true
    validates :available, inclusion: { in: [true, false] }
end