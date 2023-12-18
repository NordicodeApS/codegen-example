class OrdersController < ApplicationController

  def index
    render :json => OrderSerializer.serialize(Order.all)
  end

  def show
    render :json => OrderSerializer.serialize(Order.find(params[:id]))
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      render :json => OrderSerializer.serialize(@order), status: :created
    else
      render :json => { errors: @order.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    render :json => {}, status: :no_content
  end

  private
  def order_params
    params.require(:order).permit(:customerId, :showId, :tickets => [])
  end
end