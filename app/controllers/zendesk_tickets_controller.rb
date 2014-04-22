class ZendeskTicketsController < ApplicationController
  def index
    @tickets = ZendeskApiInit.client.tickets
  end

  def show
    @ticket = ZendeskApiInit.client.tickets.find(id: params[:id])
  end
end
