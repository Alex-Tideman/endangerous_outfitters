class CartTripsController < ApplicationController

  def create
    trip = Trip.find(params[:trip_id])
    cart.add_trip(trip)
    session[:cart] = cart.data
    redirect_to cart_path
  end

  def index
    @cart_trips = cart.trips
  end

  def destroy
    #Need to find how to select the trip id to get specific cart trip
    @cart_trip = cart.trips.find(params[:id])
    @cart_trip.destroy
    redirect_to cart_trips_path
  end


end
