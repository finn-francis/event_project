Given(/^they have posted a comment$/) do
  @user_comment = @user_one.comments.create!(
    event: @event,
    body: Faker::Lorem.paragraph
  )
end

When(/^they press delete$/) do
  click_button 'x'
end

When(/^they write a comment in the comment box$/) do
  @comment = Faker::Lorem.paragraph
  fill_in 'comment_body', with: @comment
end

Then(/^the comment should be deleted$/) do
  expect(page).not_to have_content(@user_comment)
end

Then(/^their comment is posted$/) do
  expect(page).to have_content(@comment)
  expect(page).to have_content(@user_one.profile.name)
  expect(page).to have_css('img', @user_one.profile.image_url)
end

