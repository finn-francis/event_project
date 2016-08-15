Given(/^the User is signed up$/) do
  @user_one = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

Given(/^they are signed in$/) do
  visit new_user_session_path
  fill_in 'Email', with: @user_one.email
  fill_in 'Password', with: 'password'
  click_button 'Log in'
end

Given(/^they are on the new event page$/) do
  visit new_event_path
end

When(/^they fill in the name form$/) do
  @event_title = Faker::Name.title
  fill_in 'event_title', with: @event_title
end

Then(/^they should be redirected to the event page$/) do
  expect(page).to have_content(@event_title)
end

