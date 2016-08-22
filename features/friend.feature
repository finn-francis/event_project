Feature: Friend

  Scenario: A user views a list of their friends on their profile
    Given there are two users
      And their profiles are filled in
      And they are friends
      And they are signed in
    When they click the "Profile" link
    Then they should see a list of their friends
