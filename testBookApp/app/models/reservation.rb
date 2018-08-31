class Reservation < ApplicationRecord
  belongs_to :borrower
  belongs_to :book

  validates :end_time, presence: true
  validates :start_time, presence: true
  
end
