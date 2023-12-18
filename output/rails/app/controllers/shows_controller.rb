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
      redirect_to @show
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy

    redirect_to shows_path, status: :see_other
  end

  private
  def show_params
    params.require(:show).permit(:name, :description, :category_id, :date)
  end

end