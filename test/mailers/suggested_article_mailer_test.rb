require 'test_helper'

class SuggestedArticleMailerTest < ActionMailer::TestCase
  test "suggestion" do
    mail = SuggestedArticleMailer.suggestion
    assert_equal "Suggestion", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "thanks" do
    mail = SuggestedArticleMailer.thanks
    assert_equal "Thanks", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
