class TokensController < ApplicationController

  def create
    @token = Token.new(token_params)

    if @token.save
      render :json => TokenSerializer.serialize(@token), status: :created
    else
      render :json => { errors: @token.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @token = Token.find(params[:id])
    @token.destroy

    render :json => {}, status: :no_content
  end

  private
  def token_params
    params.require(:token).permit(:email, :password)
  end
end