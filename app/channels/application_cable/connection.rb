module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = cookies[:username]
      cookies[:username] = nil
    end
  end
end