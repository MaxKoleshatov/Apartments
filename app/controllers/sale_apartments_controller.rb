class SaleApartmentsController < ApplicationController
  def index
    @sale_apartments = SaleApartment.all
  end

  def show
    @sale_apartment = SaleApartment.find(params[:id])
  end

  def new
    @sale_apartment = SaleApartment.new
  end

  def create
    @sale_apartment = current_user.sale_apartments.new(sale_apartment_params)

    if @sale_apartment.save
      redirect_to @sale_apartment, notice: 'You have created sale announcement'
    else
      render :new
    end
  end

  private

  def sale_apartment_params
    params.require(:sale_apartment).permit(:square_apartment, :price_apartment, :price_per_square_meter_apartment, :description_sale)
  end
end
  