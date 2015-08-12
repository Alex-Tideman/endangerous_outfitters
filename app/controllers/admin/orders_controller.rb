class Admin::OrdersController < Admin::BaseController
  
  def index
    @orders = Order.where(nil)
    filtering_params(params).each do |key, value|
      @orders = @orders.public_send(key, value) if value.present?
    end

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

  private

  def filtering_params(params)
    params.slice(:status)
  end

end