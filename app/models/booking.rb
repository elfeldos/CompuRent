class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :computer

  def change_availability_to_true
    # code to change availiability of computer
    self.computer.update(availiability: true) if Date.today >= self.end_date
  end
end
