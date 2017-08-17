Feature: Solve the challenge UN ZIP CORRUPTO
  From https://wow.sinfocol.org
  With my username SYLAR

  Scenario: Succesful Solution
    Given a zip file
    When Download the file
      And I decompress the file
      And I see two files in it
      And I use notepad++ to watch the file without format
      And I see is a PNG
    Then  I change the extention
        And I open the image
    Then I solve the challenge
