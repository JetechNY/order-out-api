require 'stripe'
require 'dotenv'
Dotenv.load('./.env')

class Api::V1::ChargesController < ApplicationController

  Stripe.api_key = ENV['STRIPE_SECRET_KEY']

  def create

    customer = Stripe::Customer.create(
      email: params[:token][:email],
      source: params[:token][:id]
  )

    charge = Stripe::Charge.create({
        amount: params[:amount].to_i * 100,
        currency: "usd",
        customer: customer.id,
        receipt_email: params[:token][:email],
        description: "Duck",
        shipping: {
            name: params[:token][:card][:name],
            address: {
                line1: params[:token][:card][:address_line1],
                line2: params[:token][:card][:address_line2],
                city: params[:token][:card][:address_city],
                country: params[:token][:card][:address_country],
                postal_code: params[:token][:card][:address_zip]
            }
        }
    },{
        idempotency_key: params[:ip_key]
    })
  end

end
