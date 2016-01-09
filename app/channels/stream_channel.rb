class StreamChannel < ApplicationCable::Channel
  def subscribed
    stream_from "stream_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create! content: data['message']
  end
end
