module Api
  class MessagesController < ApplicationController
    def public
      message = 'The API doesn\'t require an access token to share this message.'
      render json: { message: message }
    end
  end
end
