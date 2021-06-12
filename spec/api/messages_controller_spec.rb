require 'rails_helper'

describe Api::MessagesController, type: :controller do
  describe '#public' do
    subject { get :public, params: { format: :json } }

    it 'returns an accepted answer for the public endpoint' do
      subject

      expect(response).to be_ok

      message = 'The API doesn\'t require an access token to share this message.'
      expect(json_response!).to include('message' => message)
    end
  end
end
