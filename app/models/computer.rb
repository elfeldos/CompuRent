class Computer < ApplicationRecord
  CATEGORIES = ['Laptop', 'PC']
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :year, presence: true
  validates :details, presence: true, length: { minimum: 5, maximum: 20 }
  validates :price, numericality: true
  validates :category, inclusion: Computer::CATEGORIES
  # validates :photo, presence: true

  def change_availability_to_false
    # code to change availiability of computer
    self.update(availiability: false)
  end

  include PgSearch::Model
  pg_search_scope :search_computers,
    against: [ :name, :price, :processor, :ram, :storage, :graphic_card ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
