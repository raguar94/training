Feature: Solve the challenge ofimatico
  From https://wow.sinfocol.org
  With my username SYLAR

  Scenario: Succesful Solution
    Given a doc file
    When Download the file
      And I open the file with Word Office
      And I export the image in the header
    Then  I open it 
    Then I solve the challenge
