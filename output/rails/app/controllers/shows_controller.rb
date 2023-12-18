class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      render json: @show, status: :created
    else
      render json: @show.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
  end

  private
  def show_params
    params.require(:show).permit(:name, :description, :categoryId)
  end
end