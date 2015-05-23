class ApiController < ActionController::Base
  def pay
    webpay = WebPay.new('test_secret_8Ttchc6rJh224ojeXoeqa088')
webpay.charge.create(
   amount: 400,
   currency: "jpy",
   card: "tok_SampleCardToken"
)
    render nothing: true
  end
end


require 'paypal-sdk-rest'
include PayPal::SDK::REST
PayPal::SDK.configure({
  :mode => "sandbox",
  :client_id => "AQkquBDf1zctJOWGKWUEtKXm6qVhueUEMvXO_-MCI4DQQ4-LWvkDLIN2fGsd",
  :client_secret => "EL1tVxAjhT7cJimnz5-Nsx9k2reTKSVfErNQF-CmrwJgxRtylkGTKlU4RvrX"
})

