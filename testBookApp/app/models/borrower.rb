class Borrower < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :books, through: :reservations
end
