require 'dotenv'
Dotenv.load('./.env')

ENV[‘STRIPE_SECRET_KEY’]
ENV[‘PUB_KEY’]

Rails.configuration.stripe = {
  :publishable_key => ENV[‘PUB_KEY’],
  :secret_key => ENV[‘STRIPE_SECRET_KEY’]
}

Stripe.api_key = Rails.configuration.strips[:secret_key]
