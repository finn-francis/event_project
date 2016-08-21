Given(/^they have filled in their profile details$/) do
  step 'the user clicks the "Edit Profile" link'
  step 'they enter their profile details'
  step 'they click the "Save" button'
end

Given(/^the user clicks the "([^"]*)" link$/) do |link|
  click_link link
end

When(/^they click on an attendees profile thumbnail$/) do
  click_link [@user_one.id, '-profile'].join("")
end

When(/^they enter their profile details$/) do
  @first_name = Faker::Name.first_name
  @last_name  = Faker::Name.last_name
  @description = Faker::Lorem.paragraph
  @country = 'United Kingdom'
  @city = 'United Kingdom'
  @user_url = Faker::Avatar.image

  fill_in 'profile_first_name', with: @first_name
  fill_in 'profile_last_name', with: @last_name
  fill_in 'profile_description', with: @description
  fill_in 'profile_country', with: @country
  fill_in 'profile_city', with: @city
  fill_in 'profile_image_url', with: @user_url
end

Then(/^the profile edits will be saved$/) do
  @user = User.last
  expect(@user.profile.first_name).to eq(@first_name)
  expect(@user.profile.last_name).to eq(@last_name)
  expect(@user.profile.description).to eq(@description)
  expect(@user.profile.country).to eq(@country)
  expect(@user.profile.city).to eq(@city)
  expect(@user.profile.image_url).to eq(@user_url)
end

Then(/^they see all of their profile details on the page$/) do
  expect(page).to have_content(@first_name)
  expect(page).to have_content(@last_name)
  expect(page).to have_content(@description)
  expect(page).to have_content(@country)
  expect(page).to have_content(@city)
  expect(page).to have_css('img', @user_url)
end

Then(/^they should be redirectd to the users profile$/) do
  profile = @user_one.profile
  expect(page).to have_content(profile.name)
  expect(page).to have_content(profile.location)
  expect(page).to have_content(profile.description)
  expect(page).to have_css('img', profile.image_url)
end

Then(/^they should see the events that they are attending$/) do
  expect(page).to have_content(@event.title)
  expect(page).to have_content(@event.description)
  expect(page).to have_content(@event.location)
  expect(page).to have_css('img', @event.image_url)
end

