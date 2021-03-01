class ExampleChannel < ApplicationCable::Channel
  def subscribed
    stream_from "example"
  end
end
