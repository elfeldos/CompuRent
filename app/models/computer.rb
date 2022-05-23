class Computer < ApplicationRecord
  belongs_to :user
  validates :name, :year, :availiability, presence: true
  validates :details, presence: true, length: {minimum: 10}
  validates :price, numericality: true
end
