Feature: Friend

  Scenario: A user views a list of their friends on their profile
    Given they are friends
      And they are signed in
    When they click the "Profile" link
    Then they should see a list of their friends
