class CustomersController < ApplicationController

  def index
    render :json => CustomerSerializer.serialize(Customer.all)
  end

  def show
    render :json => CustomerSerializer.serialize(Customer.find(params[:id]))
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render :json => CustomerSerializer.serialize(@customer), status: :created
    else
      render :json => { errors: @customer.errors }, status: :unprocessable_entity
    end
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      render :json => CustomerSerializer.serialize(@customer), status: :ok
    else
      render :json => { errors: @customer.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    render :json => {}, status: :no_content
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :email)
  end
end