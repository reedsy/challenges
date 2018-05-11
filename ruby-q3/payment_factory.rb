require_relative './stripe'
require_relative './paypal'

class PaymentFactory
  def self.build(provider, basket)
    case provider
    when :stripe
      Stripe.new(basket)
    when :paypal
      PayPal.new(basket)
    end
  end
end
