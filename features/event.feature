Feature: Event

  Background:
    Given they are signed in

  Scenario: A User creates a new event
    When the user clicks the "New Event" link
      And they fill in the new event form
      And they click the "Create Event" button
    Then they should be redirected to the event page
