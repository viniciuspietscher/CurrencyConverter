require 'rest-client'
require 'json'

class ConvertService
  def initialize(source_currency, desired_currency, amount)
    @source_currency  = source_currency
    @desired_currency = desired_currency
    @amount           = amount.to_f
  end

  def perform
    begin
      currencydatafeed_api_url = Rails.application.credentials[Rails.env.to_sym][:currency_api_url]
      currencydatafeed_api_key = Rails.application.credentials[Rails.env.to_sym][:currency_api_key]

      url = "#{currencydatafeed_api_url}?token=#{currencydatafeed_api_key}&currency=#{@source_currency}/#{@desired_currency}"
      res = RestClient.get url
      value = JSON.parse(res.body)['currency'][0]['value'].to_f

      value * @amount
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
