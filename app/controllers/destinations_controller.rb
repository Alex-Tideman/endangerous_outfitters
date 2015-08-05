class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    @africa = Destination.find(5)
    @asia = Destination.find(4)
    @oceania = Destination.find(6)
    @north_america = Destination.find(1)
    @south_america = Destination.find(2)
    @europe = Destination.find(3)
  end

  def show
    @africa = Destination.find(5)
    @asia = Destination.find(4)
    @oceania = Destination.find(6)
    @north_america = Destination.find(1)
    @south_america = Destination.find(2)
    @europe = Destination.find(3)
  end



end