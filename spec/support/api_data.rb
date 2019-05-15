RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, /currencydatafeed.com/ ).with(headers: { 'Accept'=>'*/*'}).to_return(status: 200, body: '{
      "status": true,
      "currency": [
        {
          "currency": "USD/BRL",
          "value": "3.1415",
          "date": "2019-05-15 19:22:22",
          "type": "original"
        }
      ]
      }', headers: {})
  end
end
