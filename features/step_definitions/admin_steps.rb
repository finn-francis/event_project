Given(/^the admin is signed in$/) do
  visit root_path
  click_button "Options"
  click_link "Log In"
  fill_in "Email", with: @admin.email
  fill_in "Password", with: "password"
  click_button "Log in"
end

Given(/^they visit an event page with a comment$/) do
  visit ['/events/', @event_one.id].join
end

Then(/^the users comment should be deleted$/) do
  expect(page).to_not have_content(@comment_one.body)
end

