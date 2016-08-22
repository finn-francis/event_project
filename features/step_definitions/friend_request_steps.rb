Given(/^they visit the other users profile$/) do
  visit user_profile_path(@user_two)
end

Then(/^a friend request should be sent$/) do
  expect(page).to have_content("Friend request sent")
end

