Given(/^they are banned from an event$/) do
  @event_one.ban_user @user_one
end

Then(/^the user should be banned from the event page$/) do
  expect(@event_one.banned_users.include?(@user_one)).to eq(true)
end

Then(/^they will see a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
end

