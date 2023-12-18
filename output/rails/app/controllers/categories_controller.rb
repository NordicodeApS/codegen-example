class CategoriesController < ApplicationController

  def index
    render :json => Category.all
  end

  def show
    render :json => Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      render :json => @category, status: :created
    else
      render :json => { errors: @category.errors }, status: :unprocessable_entity
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      render :json => @category, status: :ok
    else
      render :json => { errors: @category.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    render :json => {}, status: :no_content
  end

  private
  def category_params
    params.require(:category).permit(:name, :description)
  end

end