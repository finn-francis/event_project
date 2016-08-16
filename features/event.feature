Feature: Event

  Background:
    Given the User is signed up
      And they are signed in
      And they are on the new event page

  Scenario: A User creates a new event
    When they fill in the new event form
      And they click the "Create Event" button
    Then they should be redirected to the event page
