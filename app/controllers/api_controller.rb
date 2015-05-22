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