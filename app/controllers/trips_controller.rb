class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id].to_i)
    build_google_markers(@trip)
  end

  def index
    @trips = Trip.all
    build_google_markers(@trips)
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :trip_cost,
    :destination_id, :activity_id, :image, :lat, :long)
  end

  def build_google_markers(data)
    @hash = Gmaps4rails.build_markers(data) do |trip, marker|
      marker.lat trip.lat
      marker.lng trip.long
      marker.infowindow "<a id='map-links' href='#{trip_url(trip)}'>#{trip.name}</a>"
    end
  end

end
