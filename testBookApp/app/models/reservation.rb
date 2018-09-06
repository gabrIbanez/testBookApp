class Reservation < ApplicationRecord
	after_creation :set_status
	enum status: [ :matin, :midi, :soir ]

  belongs_to :borrower
  belongs_to :book

  validates :end_time, presence: true
  validates :start_time, presence: true

  
end
