module CommentData

  def self.extended(object)
    object.instance_exec do
      @hello = "hello"
      @comment_one = @event_one.comments.create!(
        user: @user_two,
        body: Faker::Lorem.paragraph
      )

      @comment_two = @event_two.comments.create!(
        user: @user_three,
        body: "Comment two"
      )
    end
  end

end
