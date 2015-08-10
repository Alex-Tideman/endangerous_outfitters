class Admin::TripsController < Admin::BaseController

  def index
    @trips = Trip.all
  end

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
      render '/admin/trips/new.html.erb'
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(name: params[:trip][:name],
                    description: params[:trip][:description],
                    trip_cost: params[:trip][:trip_cost],
                    image: params[:trip][:image])
      flash[:notice] = "Trip updated!"
      redirect_to admin_trips_path
    else
      flash[:error] = "Invalid input - Please try updating trip again"
      render '/admin/trips/edit.html.erb'
    end

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
