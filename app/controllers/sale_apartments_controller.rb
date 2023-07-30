class SaleApartmentsController < ApplicationController
  def index
    @sale_apartments = SaleApartment.all
  end

  def show
    @sale_apartment = SaleApartment.find(params[:id])
  end
end
  