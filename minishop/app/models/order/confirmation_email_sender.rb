class Order < ActiveRecord::Base
  class ConfirmationEmailSender
    def after_commit(order)
      Notifier.order_received(order).deliver_later
    end
  end
end
