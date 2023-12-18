class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render :show, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      render :show, status: :ok, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :email)
  end
end