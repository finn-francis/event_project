Feature: Invites

  Background:
    Given there are two users
      And there is an event
      And the User is signed up
      And they are signed in
      And they are on the homepage
      And they have an invite
    When they click on the invite

  Scenario: A User accepts an invite to an event
    When they click the "Accept" button
    Then they will be redirected to the event

  Scenario: A User declines an invite to an event
    When they click the "Decline" button
    Then they will be redirected to the invites page

