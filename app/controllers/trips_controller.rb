class TripsController < ApplicationController

  # Callbacks

  before_action :logged_in_user, only: [:edit, :update, :new, :create]

  # Methods

  def index
    @user = current_user
    @trips = current_user.trips
  end

  def new
    @user = current_user
    @trip = @user.trips.new
  end

  def edit
  end

  def create
    @trip = current_user.trips.create(trip_params)
    if @trip.save
      redirect_to '#'
    else
      render 'new'
    end
  end

  def update
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date)
  end
end
