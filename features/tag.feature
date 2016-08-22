Feature: Tags

  Background:
    Given they are signed in

  @javascript
  Scenario: An organiser adds a tag to their
    Given they are on the event page
    When they click the "new-tag-button"
      And they name the tag
      And they click the "Save" button
    Then the new tag should appear on the event page

  Scenario: A User clicks on a tag and sees a list of other events that share the same tag
    Given they have tagged that event
      And there are two other tagged events
      And they are on the event page
    When they click the tag on their event
    Then they see a list of all the similarly tagged events

