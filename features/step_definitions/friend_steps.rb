Given(/^they are friends$/) do
  Friendship.create!(
    user_id: @user_one.id,
    friend_id: @user_two.id
  )
end

Given(/^their profiles are filled in$/) do
  @user_two.profile.update!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    image_url: Faker::Avatar.image
  )
end

Then(/^they should see a list of their friends$/) do
  profile = @user_two.profile
  my_profile = @user_one.profile
  expect(page).to have_content(profile.name)
end

