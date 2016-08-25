Given(/^they have tagged that event$/) do
  @tag = Tag.create!(name: 'ruby')
  @event_one.tags << @tag
end

Given(/^there are two other tagged events$/) do
  EventTag.create!(event_id: @event_two.id, tag_id: @tag.id)
end

Given(/^they are on the event page$/) do
  visit event_path(@event_one)
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
  expect(page).to have_content(@event_one.title)
  expect(page).to have_content(@event_one.description)
  expect(page).to have_content(@event_one.location)
end

