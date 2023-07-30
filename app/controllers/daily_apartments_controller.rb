class DailyApartmentsController < ApplicationController
  def index
    @daily_apartments = DailyApartment.all
  end

  def show
    @daily_apartment = DailyApartment.find(params[:id])
  end
end