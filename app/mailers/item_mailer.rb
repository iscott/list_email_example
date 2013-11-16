class ItemMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.items_mailer.new_item_notification.subject
  #
  def new_item_notification(item)
    @item = item

    mail to: @item.email, subject: "You have a new item to buy!"
  end
end
