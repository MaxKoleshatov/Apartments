class DailyApartmentsController < ApplicationController
  def index
    @daily_apartments = DailyApartment.all
  end

  def show
    @daily_apartment = DailyApartment.find(params[:id])
  end

  def new
    @daily_apartment = DailyApartment.new
  end

  def create
    @daily_apartment = current_user.daily_apartments.new(daily_apartment_params)

    if @daily_apartment.save
      redirect_to @daily_apartment, notice: 'You have created daily announcement'
    else
      render :new
    end
  end

  private

  def daily_apartment_params
    params.require(:daily_apartment).permit(:square_apartment, :price_daily_apartment, :description_daily)
  end
end