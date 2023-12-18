class TicketsController < ApplicationController

  def index
    render :json => TicketSerializer.serialize(Ticket.all)
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render :json => TicketSerializer.serialize(@ticket), status: :created
    else
      render :json => { errors: @ticket.errors }, status: :unprocessable_entity
    end
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      render :json => TicketSerializer.serialize(@ticket), status: :ok
    else
      render :json => { errors: @ticket.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    render :json => {}, status: :no_content
  end

  private
  def ticket_params
    params.require(:ticket).permit(:seat, :available)
  end
end