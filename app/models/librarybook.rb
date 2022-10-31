class Librarybook < ApplicationRecord
after_commit :broadcast_me

  def broadcast_me
    ActionCable.server.broadcast "BookstatusChannel:#{id}", {
      status: status.titleize,
      message: LibrarybooksController.render(partial: 'onebook', locals: { book: self }).squish
    }
  end
end
