namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Stephanie",
                         email: "stephanie@meetrical.com",
                         password: "tsetoung",
                         password_confirmation: "tsetoung",
                         admin: true)
    User.create!(name: "Christine",
                 email: "christine@savardfaire.com",
                 password: "2012zouba",
                 password_confirmation: "2012zouba")
    Market.create!(name: "New York",
                 rank: "1",
                 description: "New York City area",
                 longitude: "",
                 latitude: "")
  end
end