class ShowsController < ApplicationController

  def index
    render :json => Show.all
  end

  def show
    render :json => Show.find(params[:id])
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      render :json => @show, status: :created
    else
      render :json => { errors: @show.errors }, status: :unprocessable_entity
    end
  end

  def update
    @show = Show.find(params[:id])

    if @show.update(show_params)
      render :json => @show, status: :ok
    else
      render :json => { errors: @show.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy

    render :json => {}, status: :no_content
  end

  private
  def show_params
    params.require(:show).permit(:name, :description, :categoryId, :date)
  end

end