class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @ticket = Ticket.find(params[:ticketid])

    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:ticketid])
    @ticket.destroy

    redirect_to tickets_path, status: :see_other
  end

  private
  def ticket_params
    params.require(:ticket).permit(:seat, :available)
  end

end