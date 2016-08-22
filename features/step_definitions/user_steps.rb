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

When(/^they click the "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^they will see a notice saying "([^"]*)"$/) do |notice|
  expect(page).to have_css('.notice', notice)
end

