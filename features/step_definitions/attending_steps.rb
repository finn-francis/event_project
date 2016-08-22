Given(/^there is an event with attendees$/) do
  step "they have an invite"

  @invite.update accepted: true
end

Given(/^they have filled in their profiles$/) do
  [@user_one, @user_two].each do |user|
    user.profile.update!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.paragraph,
      country: Faker::Address.country,
      city: Faker::Address.city
    )
  end
end

When(/^they visit the event page$/) do
  visit ['/events/', @event_one.id].join
end

Then(/^they should see the attending users$/) do
  profile_one = @user_one.profile
  profile_two = @user_two.profile

  expect(page).to have_content(profile_one.name)
  expect(page).to have_css('img', profile_one.image_url)

  expect(page).to have_content(profile_two.name)
  expect(page).to have_css('img', profile_two.image_url)
end

