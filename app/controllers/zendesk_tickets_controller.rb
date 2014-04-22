class ZendeskTicketsController < ApplicationController
  def index
    logger.debug "ZendeskApiInit.client=#{ZendeskApiInit.client.to_s}"
    @tickets = ZendeskApiInit.client.tickets
  end
end
