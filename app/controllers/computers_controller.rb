class ComputersController < ApplicationController
  # code to display all is in pages_controller because of landing page
  def index
    @computers = Computer.all

    if params[:search_by_name].present?
      # @computers = Computer.where(name: params[:search_by_name])
      @computers = Computer.where('name ILIKE ?', "%#{params[:search_by_name]}%")
    end
    # raise
    if params[:category] == "PC"
      @computers = Computer.where(category: "PC")
    elsif params[:category] == "Laptop"
      @computers = Computer.where(category: "Laptop")
    end
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
    @computer = Computer.find(params[:id])
    @user = @computer.user
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
