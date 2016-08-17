Given(/^there is an event with attendees$/) do
  step "there is an event"
  step "they have an invite"

  @invite.update accepted: true
end

When(/^they visit the event page$/) do
  visit ['/events/', @event.id].join
end

Then(/^they should see the attending users$/) do
  expect(page).to have_content(@user_one.email)
  expect(page).to have_content(@user_two.email)
end

