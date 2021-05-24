class HolidaysController < ApplicationController
  def index
    @holidays = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def holiday_params
    params.require(:holiday).permit(:name, :country, :city, :description, :rating, :photo)
  end
end
