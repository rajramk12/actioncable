class BookstatusChannel < ApplicationCable::Channel
  def subscribed
    stream_from "BookstatusChannel:#{params[:library_book_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end
