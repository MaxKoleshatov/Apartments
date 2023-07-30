class RentApartmentsController < ApplicationController
  def index
    @rent_apartments = RentApartment.all
  end

  def show
    @rent_apartment = RentApartment.find(params[:id])
  end

  def new
    @rent_apartment = RentApartment.new
  end

  def create
    @rent_apartment = current_user.rent_apartments.new(rent_apartment_params)

    if @rent_apartment.save
      redirect_to @rent_apartment, notice: 'You have created rent announcement'
    else
      render :new
    end
  end

  private

  def rent_apartment_params
    params.require(:rent_apartment).permit(:square_apartment, :price_mount_apartment, :description_rent)
  end
end
  
    