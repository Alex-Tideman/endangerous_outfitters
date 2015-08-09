class OrdersController < ApplicationController

  def create
    if current_user
      order = current_user.orders.create
      session[:cart].each do |trip_id, quantity|
        OrderTrip.create(trip_id: trip_id, order_id: order.id)
      end
      session[:cart] = {}
      flash[:notice] = "Order was successfully placed!"
      redirect_to orders_path
    else
      flash[:notice] = "You must be logged in to checkout!"
      redirect_to login_path
    end
  end

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
  end
end
