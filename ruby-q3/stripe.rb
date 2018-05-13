require_relative './payment_provider'

class Stripe < PaymentProvider
  def process!
    {
      status: :success,
      amount: total,
      provider: :stripe
    }
  end
end
