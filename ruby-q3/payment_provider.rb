class PaymentProvider
  def initialize(basket)
    @basket = basket
  end

  def process!
    raise NotImplementedError
  end

  def total
    @total ||= @basket[:total] || 0
  end
end
