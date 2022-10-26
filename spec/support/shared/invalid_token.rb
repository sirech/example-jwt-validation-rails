RSpec.shared_examples "invalid token" do |message|
  it "#{message}" do
    allow(JsonWebToken).to receive(:verify).and_raise(JWT::DecodeError, message)
    
    subject
    
    expect(response).to be_unauthorized
    expect(json_response!).to include('message' => message)
  end
end