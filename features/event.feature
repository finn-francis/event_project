Feature: Event

  Scenario: A User enters the name of the new event
    Given the User is signed up
      And they are signed in
      And they are on the new event page
    When they fill in the name form
    And they click the "Create Event" button
    Then they should be redirected to the event page
