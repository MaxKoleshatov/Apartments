class RentApartmentsController < ApplicationController
  def index
    @rent_apartments = RentApartment.all
  end
end
    