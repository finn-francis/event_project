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

Given(/^there are some invites to the event$/) do
  @user_one.invites.create!(
    event: @event_one,
    invited: @user_two
  )

  @user_one.invites.create!(
    event: @event_one,
    invited: @user_three
  )
end

Given(/^they are on the new event page$/) do
  visit new_event_path
end

When(/^they fill in the new event form$/) do
  @event_description = Faker::Lorem.paragraph
  @event_title = Faker::Name.title
  @event_country = 'United Kingdom'
  @event_city = 'Hoddesdon'
  @event_postcode = 'EN11 8BX'
  @event_url = Faker::Avatar.image

  fill_in 'event_title', with: @event_title
  fill_in 'event_description', with: @event_description
  fill_in 'event_image_url', with: @event_url
  fill_in 'event_country', with: @event_country
  fill_in 'event_city', with: @event_city
  fill_in 'event_postcode', with: @event_postcode

  @start = %w(2016 August 30 09 00)
  @end = %w(2016 September 14 11 00)
  @start_date = "2016-08-30"
  @end_date = "2016-09-14"

  select @start[0], from: "event_start_date_1i"
  select @start[1], from: "event_start_date_2i"
  select @start[2], from: "event_start_date_3i"
  select @start[3], from: "event_start_time_4i"
  select @start[4], from: "event_start_time_5i"
  select @end[0], from: "event_end_date_1i"
  select @end[1], from: "event_end_date_2i"
  select @end[2], from: "event_end_date_3i"
  select @end[3], from: "event_end_time_4i"
  select @end[4], from: "event_end_time_5i"
end

Then(/^they should be redirected to the event page$/) do
  expect(page).to have_content(@event_title)
  expect(page).to have_content(@event_description)
  expect(page).to have_css('img', @event_url)
  expect(page).to have_content(@start_date)
  expect(page).to have_content(@end_date)
end

Then(/^they should see a list of all the invited users$/) do
  within('#invited') do
    expect(page).to have_content(@user_three.profile.name)
    expect(page).to have_css('img', @user_one.profile.name)
    expect(page).to have_content(@user_three.profile.name)
    expect(page).to have_css('img', @user_two.profile.name)
  end
end

