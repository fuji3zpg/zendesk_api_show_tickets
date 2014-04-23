class ZendeskTicketsController < ApplicationController
  def index
    @tickets = ZendeskApiInit.client.tickets.page(1).per_page(10) # 10チケットを取得して、最初の1ページ目を表示。pageメソッドが表示されるページで、per_pageメソッドがページに表示するデータ数。
  end

  def show
    @ticket = ZendeskApiInit.client.tickets.find(id: params[:id])
  end
end
