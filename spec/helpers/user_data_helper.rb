module UserData

  def self.extended(object)
    object.instance_exec do
      @admin_role = Role.create!(name: 'admin')

      4.times do
        User.create!(
          email: Faker::Internet.email,
          password: 'password',
          password_confirmation: 'password'
        )
      end

      @user_one = User.all[0]
      @user_two = User.all[1]
      @user_three = User.all[2]
      @admin = User.all[3]

      @admin.roles << @admin_role

      @profile_one = @user_one.profile
      @profile_two = @user_two.profile
      @profile_three = @user_three.profile

      @profile_one.update(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem.paragraph,
        country: "United Kingdom",
        city: "Hoddesdon"
      )
    end
  end

end
