Feature: Tags

  @javascript
  Scenario: An organiser adds a tag to their
    Given there is a signed in user
      And they have created an event
      And they are on the event page
    When they click the "new-tag-button"
      And they name the tag
      And they click the "Save" button
    Then the new tag should appear on the event page
