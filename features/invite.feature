Feature: Invites

  Background:
    Given they are signed in
      And they have an invite
    When they click on the invite

  Scenario: A User accepts an invite to an event
    When they click the "Accept" button
    Then they will be redirected to the event

  Scenario: A User declines an invite to an event
    When they click the "Decline" button
    Then they will be redirected to the invites page

