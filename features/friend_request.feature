Feature: Friend Request

  Scenario: A user sends a friend request to another user
    Given there are two users
      And they are signed in
      And they visit the other users profile
    When they click the "Add friend" button
    Then a friend request should be sent

