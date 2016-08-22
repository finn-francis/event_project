Given(/^they visit the other users profile$/) do
  visit user_profile_path(@user_two)
end

Given(/^the user logs out$/) do
  click_link "Log Out"
end

Given(/^the other user is signed in$/) do
  click_link "Log In"
  fill_in "Email", with: @user_two.email
  fill_in "Password", with: "password"
  click_button "Log in"
end

When(/^they click the "([^"]*)" link$/) do |link|
  click_link link
end

Then(/^a friend request should be sent$/) do
  expect(page).to have_content("Friend request sent")
end

Then(/^they should become friends with the other user$/) do
  expect(@user_one.friends).to include(@user_two)
  expect(page).to_not have_content("Accept")
end

Then(/^they should not become friends with the other user$/) do
  expect(@user_one.friends).to_not include(@user_two)
end

Then(/^they should not be able to make another request$/) do
  click_link "Log Out"
  click_link "Log In"
  fill_in "Email", with: @user_one.email
  fill_in "Password", with: @user_one.password
  click_button "Log in"
  visit user_profile_path(@user_two)
  save_and_open_page
  expect(page).to have_content("Friend request sent")
end

