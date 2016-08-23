Feature: Access

  Scenario: A moderator bans a user from an event
    Given they are signed in
      And they are on the event page
    When they click the "Ban" button
    Then the user should be banned from the event page

  Scenario: A user is banned from an event
    Given they are signed in
      And they are banned from an event
    When they visit the event page
    Then they will see a message saying "You are not authorized to access this page."
