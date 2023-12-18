class TokensController < ApplicationController
  def create
    @token = Token.new(token_params)

    if @token.save
      render json: @token, status: :created
    else
      render json: @token.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @token = Token.find(params[:id])
    @token.destroy
  end

  private
  def token_params
    params.require(:token).permit(:email, :password)
  end
end