class Admin::TripsController < Admin::BaseController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to admin_trips_path
  end
  private

  def trip_params
    params.require(:trip).permit(:name, :description, :trip_cost, :destination_id, :activity_id, :image_url, :image)
  end
end
