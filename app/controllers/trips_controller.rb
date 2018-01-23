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

  def details
    @trip = Trip.find(params[:id])
  end

  def edit
    @user = current_user
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = current_user.trips.create(trip_params)
    if @trip.save
      redirect_to controller: 'trips', action: 'details', id: @trip.id
    else
      flash[:danger] = 'Cannot create the trip'
      render 'new'
    end
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update_attributes(trip_params)
      redirect_to controller: 'trips', action: 'details', id: @trip.id
    else
      flash[:danger] = 'Cannot update the trip'
      render 'index'
    end
  end

  def destroy
    Trip.find(params[:id]).destroy
    flash[:success] = 'Your trip has been successfully removed'
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date)
  end
end
