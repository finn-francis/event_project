module PaginationData
  def self.extended(object)
    object.instance_exec do
      12.times do
        @user_one.events.create!(
          title: Faker::Internet.name,
          description: Faker::Lorem.paragraph,
          country: "United Kingdom",
          city: "Hoddesdon",
          postcode: "EN11 8BX"
        )
      end

      @event = Event.first

      22.times do
        @event.comments.create!(
          user_id: @user_one.id,
          body: Faker::Lorem.paragraph
        )
      end
    end
  end
end
