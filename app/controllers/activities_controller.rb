class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show

  @activity = Activity.find(params[:id])
  @trips = @activity.trips
  end

end
