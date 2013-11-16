require 'test_helper'

class ItemsMailerTest < ActionMailer::TestCase
  test "new_item_notification" do
    mail = ItemsMailer.new_item_notification
    assert_equal "New item notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
