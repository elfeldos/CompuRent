class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def new
    @computers = Computer.new
  end

  def create
    @computer = Computer.new(computer_params)

    if @computer.save
      redirect_to @computer, notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @computer.update(computer_params)
      redirect_to @computer, notice: 'Listing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @computer.destroy
    redirect_to computers_url, notice: 'Listing was successfully destroyed.'
  end

  private

  def computer_params
    params.require(:computer).permit(:name, :category, :year, :details, :availiability, :price)
  end
end
