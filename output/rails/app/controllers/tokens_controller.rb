class TokensController < ApplicationController

  def create
    @token = Token.new(token_params)

    if @token.save
      redirect_to @token
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @token = Token.find(params[:id])
    @token.destroy

    redirect_to tokens_path, status: :see_other
  end

  private
  def token_params
    params.require(:token).permit(:email, :password)
  end

end