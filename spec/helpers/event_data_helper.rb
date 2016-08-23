module EventData
  def self.extended(object)
    object.instance_exec do
      2.times do
        @user_one.events.create!(
          title: Faker::Internet.name,
          description: Faker::Lorem.paragraph,
          country: "United Kingdom",
          city: "Hoddesdon",
          postcode: "EN11 8BX"
        )
      end
      @event_one = Event.all[0]
      @event_two = Event.all[1]
      @event_three = Event.all[2]

      @hello = "hello"
      @comment_one = @event_one.comments.create!(
        user: @user_one,
        body: Faker::Lorem.paragraph
      )

      @comment_two = @event_two.comments.create!(
        user: @user_three,
        body: "Comment two"
      )
    end
  end
end
