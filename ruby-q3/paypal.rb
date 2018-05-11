require_relative './payment_provider'

class PayPal < PaymentProvider
  def process!
    {
      status: :success,
      amount: total,
      provider: :paypal
    }
  end
end
