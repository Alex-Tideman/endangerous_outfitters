class CartTripsController < ApplicationController
  def create
    trip = Trip.find(params[:trip_id])
    cart.add_trip(trip)
    session[:cart_trips] = cart.data
    redirect_to cart_path
  end

  def index
    @cart_trips = cart.trips
  end


end