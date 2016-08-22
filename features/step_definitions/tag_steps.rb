Given(/^there is a signed in user$/) do
  @tag_user = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
  visit new_user_session_path
  fill_in 'Email', with: @tag_user.email
  fill_in 'Password', with: 'password'
  click_button 'Log in'
end

Given(/^they have created an event$/) do
  @tag_event = @tag_user.events.create!(
    description: Faker::Lorem.paragraph,
    title: Faker::Name.title,
    country: 'United Kingdom',
    city: 'Hoddesdon',
    postcode: 'EN11 8BX',
    image_url: Faker::Avatar.image
  )
end

Given(/^they have tagged that event$/) do
  @tag = Tag.create!(name: 'ruby')
  @tag_event.tags << @tag
end

Given(/^there are two other tagged events$/) do
  2.times do
    event = @tag_user.events.create!(
      description: Faker::Lorem.paragraph,
      title: Faker::Name.title,
      country: 'United Kingdom',
      city: 'Hoddesdon',
      postcode: 'EN11 8BX',
      image_url: Faker::Avatar.image
    )

    event.tags << @tag
  end
end

Given(/^they are on their event page$/) do
  visit event_path(@tag_event)
end


Given(/^they are on the event page$/) do
  visit event_path(@tag_event)
end

When(/^they click the "([^"]*)"$/) do |button|
  click_button button
end

When(/^they name the tag$/) do
  @tag_name = Faker::Pokemon.name
  fill_in 'tag_name', with: @tag_name
end

Then(/^the new tag should appear on the event page$/) do
  expect(page).to have_content(@tag_name)
end

When(/^they click the tag on their event$/) do
  click_link @tag.name
end

Then(/^they see a list of all the similarly tagged events$/) do
  expect(page).to have_content(@tag_event.title)
  expect(page).to have_content(@tag_event.description)
  expect(page).to have_content(@tag_event.location)
  expect(page).to have_css('img', @tag_event.image_url)
end

