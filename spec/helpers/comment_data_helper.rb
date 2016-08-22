module CommentData
  def self.extended(object)
    object.instance_exec do
      @comment_one = @event_one.comments.create!(
        user: @user_one,
        body: Faker::Lorem.paragraph
      )
    end
  end
end
