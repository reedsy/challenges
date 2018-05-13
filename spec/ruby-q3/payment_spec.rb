require 'rspec'
require_relative '../../ruby-q3/payment_provider'
require_relative '../../ruby-q3/paypal'
require_relative '../../ruby-q3/stripe'
require_relative '../../ruby-q3/payment_factory'

describe '#payment' do
  # Fake basket object
  let(:basket) { { total: 100.45 } }

  # Base class should never be called alone
  context '#payment_provider' do
    let(:payment_provider) { PaymentProvider.new(basket) }

    it 'raises an error when being processed' do
      expect { payment_provider.process! }.to raise_error(NotImplementedError)
    end

    it 'has the correct total' do
      expect(payment_provider.total).to eq(100.45)
    end
  end

  # Process on concrete providers
  context '#process' do
    context '#paypal' do
      it 'returns a correct process status' do
        status = PayPal.new(basket).process!
        expect(status[:provider]).to eq(:paypal)
        expect(status[:amount]).to eq(100.45)
      end
    end

    context '#stripe' do
      it 'returns a correct process status' do
        status = Stripe.new(basket).process!
        expect(status[:provider]).to eq(:stripe)
        expect(status[:amount]).to eq(100.45)
      end
    end
  end

  context '#payment_factory' do
    context '#paypal' do
      it 'returns the correct concrete implementation' do
        expect(PaymentFactory.build(:paypal, basket)).to be_a_kind_of(PayPal)
      end
    end

    context '#stripe' do
      it 'returns the correct concrete implementation' do
        expect(PaymentFactory.build(:stripe, basket)).to be_a_kind_of(Stripe)
      end
    end
  end
end
