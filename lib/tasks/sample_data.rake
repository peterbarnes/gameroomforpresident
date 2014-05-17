namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    # User.create!(name: "Peter Barnes",
    #              email: "barnespeter213@gmail.com",
    #              password: "convert22",
    #              password_confirmation: "convert22",
    #              admin: true)
    # 99.times do |n|
    #   name  = Faker::Name.name
    #   email = "example-#{n+1}@example.com"
    #   password  = "password"
    #   User.create!(name: name,
    #                email: email,
    #                password: password,
    #                password_confirmation: password)
    end
  end
end