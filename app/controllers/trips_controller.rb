class TripsController < ApplicationController
  def show
    @extras = Extra.all
    @trip = Trip.find(params[:id].to_i)
  end

  def index
    @trips = Trip.all
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.set_total_cost_to_trip_cost
    @trip.set_trip_image_path
    if @trip.save
      flash[:notice] = "Trip created!"
      redirect_to trips_path
    else
      flash[:error] = "Invalid input - Please try creating trip again"
      render '/admin/trips/new.html.erb'
    end
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(name: params[:trip][:name],
                    description: params[:trip][:description],
                    trip_cost: params[:trip][:trip_cost],
                    image: params[:trip][:image])
      @trip.set_trip_image_path
      flash[:notice] = "Trip updated!"
      redirect_to admin_trips_path
    else
      flash[:error] = "Invalid input - Please try updating trip again"
      render '/admin/trips/edit.html.erb'
    end

  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :trip_cost, :destination_id, :activity_id, :image_url, :image)
  end
  # WIP - update total cost of trip when there are extras
    # trip.extras.each { |extra| trip.total_cost += extra.cost } if trip.extras

end
