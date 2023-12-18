class CategoriesController < ApplicationController
    def index
        render :json => CategorySerializer.serialize(Category.all)
    end

    def show
        render :json => CategorySerializer.serialize(Category.find(params[:id]))
    end

    def new
        render :json => CategorySerializer.serialize(Category.new)
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            render :json => CategorySerializer.serialize(@category), status: :created
        else
            render :json => { errors: @category.errors }, status: :unprocessable_entity
        end
    end

    def edit
        render :json => CategorySerializer.serialize(Category.find(params[:id]))
    end

    def update
        @category = Category.find(params[:id])

        if @category.update(category_params)
            render :json => CategorySerializer.serialize(@category), status: :ok
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