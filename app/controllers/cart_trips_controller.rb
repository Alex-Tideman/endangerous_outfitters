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

  def increment
    trip = Trip.find(params[:id])
    cart.add_trip(trip)
    session[:cart] = cart.data
    redirect_to cart_path
  end

  def decrement
    trip = Trip.find(params[:id])
    cart.decrease_trip(trip)
    session[:cart] = cart.data
    redirect_to cart_path
  end

  def destroy
    @trip = Trip.find(params[:id])
    cart.remove_trip(@trip)
    session[:cart] = cart.data
    flash[:remove] = "Successfully removed #{@trip.name} from cart."
    redirect_to cart_path
  end
end
