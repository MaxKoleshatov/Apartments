class RentApartmentsController < ApplicationController
  def index
    @rent_apartments = RentApartment.all
  end

  def show
    @rent_apartment = RentApartment.find(params[:id])
  end
end
    