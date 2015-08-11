class Admin::OrdersController < Admin::BaseController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(status: params[:order][:status].to_i)
    redirect_to admin_orders_path
  end

end