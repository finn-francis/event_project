module EventData
  def self.extended(object)
    object.instance_exec do

      @event_one = @user_one.events.create!(
          title: Faker::Internet.name,
          description: Faker::Lorem.paragraph,
          country: "United Kingdom",
          city: "Hoddesdon",
          postcode: "EN11 8BX"
      )

      @event_two = @user_one.events.create!(
        title: Faker::Internet.name,
        description: Faker::Lorem.paragraph,
        country: "United Kingdom",
        city: "Hoddesdon",
        postcode: "EN11 8BX"
      )

      @event_three = @user_two.events.create!(
        title: Faker::Internet.name,
        description: Faker::Lorem.paragraph,
        country: "United Kingdom",
        city: "Hoddesdon",
        postcode: "EN11 8BX"
      )

      @event_four = @user_two.events.create!(
        title: Faker::Internet.name,
        description: Faker::Lorem.paragraph,
        country: "United Kingdom",
        city: "Presteigne",
        postcode: "LD8 2HE"
      )

      @comment_one = @event_one.comments.create!(
        user: @user_one,
        body: Faker::Lorem.paragraph
      )

      @comment_two = @event_two.comments.create!(
        user: @user_three,
        body: "Comment two"
      )

      @comment_three = @event_four.comments.create!(
        user: @user_two,
        body: Faker::Lorem.paragraph
      )
    end
  end
end
