class DailyApartmentsController < ApplicationController
  def index
    @daily_apartments = DailyApartment.all
  end
end