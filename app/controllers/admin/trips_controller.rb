class Admin::TripsController < Admin::BaseController
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.set_total_cost_to_trip_cost
    if @trip.save
      flash[:notice] = "Trip created!"
      redirect_to trips_path
    else
      flash[:error] = "Invalid input - Please try creating trip again"
      render :new
    end
  end

  # def index
  #   @trips = Trip.all
  # end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :trip_cost, :destination_id, :activity_id, :image_url)
  end
end
