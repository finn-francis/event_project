Feature: Comment

  Background:
    Given there are two users
      And the User is signed up
      And they are signed in
      And they have filled in their profiles
      And there is an event with attendees
      And they visit the event page

  @javascript
  Scenario: A User leaves a comment on an event
    When they write a comment in the comment box
      And they click the "Post Comment" button
    Then their comment is posted

  Scenario: A User leaves a comment on an event
    When they write a comment in the comment box
      And they click the "Post Comment" button
    Then their comment is posted

  @javascript
  Scenario: A User deletes their comment
    Given they have posted a comment
      And they visit the event page
    When they press delete
    Then the comment should be deleted

  @javascript
  Scenario: A User edits their comment
    Given they have posted a comment
      And they visit the event page
    When they click the edit comment button
      And they edit their comment
      And they click the "Save Changes" button
    Then the comment should be changed
