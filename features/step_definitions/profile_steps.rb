Given(/^the user clicks the "([^"]*)" link$/) do |link|
  click_link link
end

When(/^they enter their profile details$/) do
  @first_name = Faker::Name.first_name
  @last_name  = Faker::Name.last_name
  @description = Faker::Lorem.paragraph
  @country = 'United Kingdom'
  @city = 'United Kingdom'

  fill_in 'profile_first_name', with: @first_name
  fill_in 'profile_last_name', with: @last_name
  fill_in 'profile_description', with: @description
  fill_in 'profile_country', with: @country
  fill_in 'profile_city', with: @city
end

Then(/^the profile edits will be saved$/) do
  @user = User.first
  expect(@user.profile.first_name).to eq(@first_name)
  expect(@user.profile.last_name).to eq(@last_name)
  expect(@user.profile.description).to eq(@desciption)
end

