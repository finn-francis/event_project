Feature: Admin

  @javascript
  Scenario: An admin deletes a user comment
    Given the admin is signed in
    Given they visit an event page with a comment
    When they press delete
    Then the users comment should be deleted

