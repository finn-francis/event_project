Given(/^they have an invite$/) do
  @invite = @user_two.invites.create!(
    invited: @user_one,
    event: @event
  )
end

When(/^they click on the invite$/) do
  click_link 'Invites'
end

Then(/^they will be redirected to the event$/) do
  expect(page).to have_content(@event.title)
  expect(page).to have_content(@event.description)
end

Then(/^they will be redirected to the invites page$/) do
  visit ['/users/', @user_one.id, '/invites'].join
  expect(page).to_not have_content(@user_two.email)
end
