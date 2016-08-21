Feature: Tags

  Background:
    Given there are two users
      And the User is signed up
      And they are signed in
      And they have filled in their profiles
      And there is an event
      And they are on the event page

  @javascript
  Scenario: An organiser adds a tag to their
    When they click the "new-tag-button" button
      And they name the tag
      And they click the "Save" button
    Then the new tag should appear on the event page
