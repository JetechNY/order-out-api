require 'stripe'
require 'dotenv'
Dotenv.load('./.env')

class Api::V1::ChargesController < ApplicationController

  Stripe.api_key = ENV['STRIPE_SECRET_KEY']

  def create

    order = Order.find(params[:orderId])
    amount = order.menuitems.sum(:cost) * 100

    charge = Stripe::Charge.create(
      :customer => customer.id
      :amount => amount,
      :description => 'Order Out Store',
      :currency => 'usd',
      :source => params[:token]
    )

  rescue Stripe::CardError => e
    flash[:errors] = e.message
    redirect_to charges_path
  end

end
