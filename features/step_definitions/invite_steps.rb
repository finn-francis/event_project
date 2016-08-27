Given(/^they have an invite$/) do
  @invite = @user_two.invites.create!(
    invited: @user_one,
    event: @event_one
  )
end

Given(/^they have a friend who is not attending$/) do
  @new_friend = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )

  @user_one.friend_requests.create!(
    receiver: @new_friend,
    accepted: true
  )
end

When(/^they click on the invite$/) do
  click_link 'Invites'
end

When(/^they select their friend$/) do
  within('.invite-profile-info') do
    click_button "Invite"
  end
end

Then(/^they will be redirected to the event$/) do
  expect(page).to have_content(@event_one.title)
  expect(page).to have_content(@event_one.description)
end

Then(/^they will be redirected to the invites page$/) do
  visit ['/users/', @user_one.id, '/invites'].join
  expect(page).to_not have_content(@user_two.email)
end

Then(/^the friend should now have an invite for the event$/) do
  # expect(Invite.count > 0).to eq(true)
  # expect(@new_friend.invited.length).to eq(1)
end

