# frozen_string_literal: true

# jbnfkj
class OrderMailer < ApplicationMailer
  def new_order_email
    # byebug
    @user = params[:user]
    mail(to: @user.email, subject: 'You got a new order!')
  end
end
