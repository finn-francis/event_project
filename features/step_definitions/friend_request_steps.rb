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
  expect(page).to_not have_content("Accept")
end

