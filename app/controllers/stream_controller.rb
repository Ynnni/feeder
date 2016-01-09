class StreamController < ApplicationController
  def show
    @messages = Message.all
  end
end
