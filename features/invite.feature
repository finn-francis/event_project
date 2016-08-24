Feature: Invites

  Background:
    Given they are signed in

  Scenario: A User accepts an invite to an event
    Given they have an invite
    When they click on the invite
      And they click the "Accept" button
    Then they will be redirected to the event

  Scenario: A User declines an invite to an event
    Given they have an invite
    When they click on the invite
      And they click the "Decline" button
    Then they will be redirected to the invites page

  @javascript
  Scenario: A User invites another user to an event
    Given they have a friend who is not attending
      And they are on the event page
    When they click the "invite-button" button
      And they select their friend
    Then the friend should now have an invite for the event

