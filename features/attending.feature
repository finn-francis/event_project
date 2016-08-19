Feature: Attending

  Scenario: A User views all of the attendees of an event
    Given there are two users
      And the User is signed up
      And they are signed in
      And they have filled in their profiles
      And there is an event with attendees
    When they visit the event page
    Then they should see the attending users

