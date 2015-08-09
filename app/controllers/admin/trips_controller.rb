class Admin::TripsController < Admin::BaseController
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      flash[:notice] = "Trip created!"
      redirect_to trips_path
    else
      flash[:error] = "Invalid input - Please try creating trip again"
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :trip_cost, :total_cost, :destination_id, :activity_id)
  end
end
