class TripsController < ApplicationController
  def show
    @extras = Extra.all
    @trip = Trip.find(params[:id].to_i)
  end

  def index
    @trips = Trip.all
  end

    # WIP - update total cost of trip when there are extras
    # trip.extras.each { |extra| trip.total_cost += extra.cost } if trip.extras

end
