class HolidaysController < ApplicationController
  before_action :find_holiday, only: [:show, :edit, :update, :destroy]

  def index
    @holidays = Holiday.all
    @markers = @holidays.geocoded.map do |holiday|
      {
        lat: holiday.latitude,
        lng: holiday.longitude,
        info_window: render_to_string(partial: "info_window", locals: { holiday: holiday })
      }
    end
  end

  def show
    if @holiday.latitude.present?
      @marker = @holiday.geocode.map do |holiday|
        {
          lat: @holiday.latitude,
          lng: @holiday.longitude,
          info_window: render_to_string(partial: "info_window", locals: { holiday: @holiday })
        }
      end
    end
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)
    @holiday.save ? (redirect_to holiday_path(@holiday)) : (render :new)
  end

  def edit
  end

  def update
    @holiday.update(holiday_params)
    redirect_to holiday_path(@holiday)
  end

  def destroy
    @holiday.destroy
    redirect_to holidays_path
  end

  private

  def find_holiday
    @holiday = Holiday.find(params[:id])
  end

  def holiday_params
    params.require(:holiday).permit(:city, :country, :description, :rating, :photo)
  end
end
