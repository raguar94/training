Feature: Tracks
  From www.wechall.net
  With my username SYLAR

  Scenario: Try Failed
    Given an URL
        And a button with action to vote
    When Click in the link
      And Click in the button
      And I use <<ls -la>> command
      And I see the label telling me click again
      And click again
    Then  I see the app make count votes
        And change the param in the URL with other number
        But I don't solve the challenge

    Scenario: Succesful Solution
    Given an URL
        And a button with action to vote
    When Click in the link
      And Click in the button
      And I use <<ls -la>> command
      And I see the label telling me click again
      And click again
    Then  I see the app make count votes
        And change the param in the URL with other number
        And change the cookies
    Then I solve the challenge
