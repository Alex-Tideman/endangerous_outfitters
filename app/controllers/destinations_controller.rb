class DestinationsController < ApplicationController
before_action :all_destinations, only: [:index, :show]

  def index

  end

  def show

  @destination = Destination.find(params[:id])
  @trips = @destination.trips
  end


  def all_destinations
  @destinations = Destination.all
  end

end
