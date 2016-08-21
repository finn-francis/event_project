Given(/^they are on the event page$/) do
  visit event_path(@event)
end

When(/^they name the tag$/) do
  @tag_name = Faker::Pokemon.name
  fill_in 'tag_name', with: @tag_name
end

Then(/^the new tag should appear on the event page$/) do
  expect(page).to have_content(@tag_name)
end

