class UsersController < ApplicationController

  def index
    render :json => UserSerializer.serialize(User.all)
  end

  def show
    render :json => UserSerializer.serialize(User.find(params[:id]))
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render :json => UserSerializer.serialize(@user), status: :created
    else
      render :json => { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      render :json => UserSerializer.serialize(@user), status: :ok
    else
      render :json => { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    render :json => {}, status: :no_content
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :roleEnum)
  end
end