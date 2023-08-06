class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.where(option: params[:type])
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = current_user.apartments.new(apartment_params)

    if @apartment.save && @apartment.option == "sale"
      redirect_to @apartment, notice: 'You have created sale announcement'
    elsif @apartment.save && @apartment.option == "rent"
      redirect_to @apartment, notice: 'You have created rent announcement'
    elsif @apartment.save && @apartment.option == "daily"
      redirect_to @apartment, notice: 'You have created daily announcement'
    else
      render :new
    end
  end

  private

  def apartment_params
    params.require(:apartment).permit(:square, :price, :price_meter, :option, :description, :file)
  end
end
    