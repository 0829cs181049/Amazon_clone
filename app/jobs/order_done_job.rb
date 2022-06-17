# frozen_string_literal: true

# gnfkjsn
class OrderDoneJob < ApplicationJob
  queue_as :default

  def perform(**kwargs)
    # OrderMailer.order_Done_Job(user).deliver_now
    # OrderMailer(user).deliver_later
    # OrderMailer.send(wait_until: Time.zone.today.end_of_day).perform_later
    OrderMailer.with(user: User.find(kwargs[:user])).new_order_email.deliver_now
    # OrderMailer.new_order_email(user: User.find(kwargs[:user]))
  end
end
