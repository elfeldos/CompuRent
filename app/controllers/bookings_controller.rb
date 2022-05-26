class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @computer = Computer.find(params[:computer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.computer = Computer.find(params[:computer_id])
    @booking.user = current_user
    if @booking.save
      @booking.computer.change_availability_to_false
      redirect_to computers_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :computer_id)
  end
end
