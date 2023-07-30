class SaleApartmentsController < ApplicationController
  def index
    @sale_apartments = SaleApartment.all
  end
end
  