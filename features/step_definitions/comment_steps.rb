When(/^they write a comment in the comment box$/) do
  @comment = Faker::Lorem.paragraph
  fill_in 'comment_body', with: @comment
end

Then(/^their comment is posted$/) do
  expect(page).to have_content(@comment)
  expect(page).to have_content(Comment.first.created_at)
  expect(page).to have_content(@user_one.profile.name)
  expect(page).to have_css('img', @user_one.profile.image_url)
end

