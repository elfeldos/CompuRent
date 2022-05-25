class Computer < ApplicationRecord
  CATEGORIES = ['Laptop', 'PC']
  has_one_attached :photo
  belongs_to :user
  validates :name, :year, presence: true
  validates :details, presence: true, length: { minimum: 5, maximum: 20 }
  validates :price, numericality: true
  validates :category, inclusion: Computer::CATEGORIES
end
