Given(/^there are two users$/) do
  @user_one = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )

  @user_two = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end

Given(/^there is an event$/) do
  @event = @user_two.events.create!(
    title: Faker::Name.title,
    description: Faker::Lorem.paragraph,
    country: 'United Kingdom',
    city: 'Hoddesdon',
    postcode: 'EN11 8BX'
  )
end

Given(/^the user is on the sign up page$/) do
  visit new_user_registration_path
end

Given(/^they fill in their details$/) do
  fill_in "Email", with: Faker::Internet.email
  fill_in "Password", with: 'password'
  fill_in "Password confirmation", with: 'password'
end

Given(/^they are on the homepage$/) do
  visit root_path
end

Given(/^they have an invite$/) do
  @invite = @user_two.invites.create!(
    invited: @user_one,
    event: @event
  )
end

When(/^they click on the invite$/) do
  click_link 'Invites'
end

When(/^they click the "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^they will see a notice saying "([^"]*)"$/) do |notice|
  expect(page).to have_css('.notice', notice)
end

Then(/^they will be redirected to the event$/) do
  expect(page).to have_content(@event.title)
  expect(page).to have_content(@event.description)
end
