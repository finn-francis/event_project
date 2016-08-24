module UserData

  def self.extended(object)
    object.instance_exec do
      @admin_role = Role.find_or_create_by(name: 'admin')

      @user_one = User.create!(
        email: Faker::Internet.email,
        password: 'password',
        password_confirmation: 'password'
      )

      @user_two = User.create!(
        email: Faker::Internet.email,
        password: 'password',
        password_confirmation: 'password'
      )

      @user_three = User.create!(
        email: Faker::Internet.email,
        password: 'password',
        password_confirmation: 'password'
      )

      @admin = User.create!(
        email: Faker::Internet.email,
        password: 'password',
        password_confirmation: 'password'
      )

      @admin.roles << @admin_role

      @profile_one = @user_one.profile
      @profile_two = @user_two.profile
      @profile_three = @user_three.profile
      @admin_profile = @admin.profile

      [@profile_one, @profile_two, @profile_three, @admin_profile].each do |profile|
        profile.update(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          description: Faker::Lorem.paragraph,
          country: "United Kingdom",
          city: "Hoddesdon"
        )
      end
    end
  end

end
