if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }

else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_IUhwih6zEP7Vi2nRj9IWiKjM',
    :secret_key => 'sk_test_fFfig3DZjBGK3rT1ys8wMY2M'
  }

end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
