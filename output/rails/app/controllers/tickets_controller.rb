class TicketsController < ApplicationController

  def index
    render :json => Ticket.where(show_id: params[:showid])
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render :json => @ticket, status: :created
    else
      render :json => { errors: @ticket.errors }, status: :unprocessable_entity
    end
  end

  def update
    @ticket = Ticket.find(params[:ticketid])

    if @ticket.update(ticket_params)
      render :json => @ticket, status: :ok
    else
      render :json => { errors: @ticket.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:ticketid])
    @ticket.destroy

    render :json => {}, status: :no_content
  end

  private
  def ticket_params
    params.require(:ticket).permit(:seat, :available)
  end

end