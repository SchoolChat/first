class ChatsController < ApplicationController

def post
  Pusher['general_channel'].trigger('chat_event', {
  message: params[:message]
  })
  render :text => 'OK', :status => 200
end

  def show
  end

  def index
  end
end
