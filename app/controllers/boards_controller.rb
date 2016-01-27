class BoardsController < ApplicationController
  def index
    client = Yammer::Client.new(access_token: token)
    @messages = client.messages_in_thread(params[:thread_id]).body[:messages].reverse
  end

  private

  # TODO for ui prototyping
  def token
    ENV['YAMMER_ACCESS_TOKEN']
  end
end
