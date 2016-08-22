Feature: Friend Request

  Background:
    Given there are two users
      And they are signed in
      And they visit the other users profile
    When they click the "Add friend" button

  Scenario: A user sends a friend request to another user
    Then a friend request should be sent

  Scenario: A user accepts a friend request
    Given the user logs out
      And the other user is signed in
    When they click the "Friend requests" link
      And they click the "Accept" button
    Then they should become friends with the other user

