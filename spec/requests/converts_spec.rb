require 'rails_helper'

RSpec.describe "Converts", type: :request do
  describe "GET #index" do
    it "returns http success" do
      get '/'
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #convert' do
    before do
      @amount = rand(1..9999)
    end

    it 'returns http success' do
      get '/convert_currency', params: {
        source_currency: "USD",
        desired_currency: "BRL",
        amount: @amount
      }
      expect(response).to have_http_status(200)
    end
  end
end
