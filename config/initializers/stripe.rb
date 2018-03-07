if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_SM0YoBPC3FMZa6klUafPqVAh',
    secret_key: 'sk_test_giyWEcY3jqdRcBT4TqdaHAdC'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
