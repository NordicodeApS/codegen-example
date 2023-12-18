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
      render :show, status: :created, location: @show
    else
      render json: @show.errors, status: :unprocessable_entity
    end
  end

  def update
    @show = Show.find(params[:id])

    if @show.update(show_params)
      render :show, status: :ok, location: @show
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
    params.require(:show).permit(:name, :description, :date, :category_id)
  end
end