# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


usernames = ["dino", "emily", "david", "chris"]

usernames.each do |username|
  user = User.create
  user.username = username
  user.email = "#{username}@example.com"
  user.password = "realestate"
  user.save
end

puts "There are now #{User.count} users in the database."

proposal_info = [
{
    :image => "https://upload.wikimedia.org/wikipedia/commons/1/17/DowneyMcdonalds.jpg",
    :store_name => "McDonalds"
    :description => "Good ole fashioned burger joint"
    :square_feet => "20000"
    :nearest => "2"
    :bid => "100000"
    :architectural => "Yes"
  },
  {
    :image => "https://upload.wikimedia.org/wikipedia/commons/3/31/Walmart_Home_Office.jpg",
    :store_name => "Wal-Mart"
    :description => "The big general store"
    :square_feet => "200000"
    :nearest => "5"
    :bid => "10000000"
    :architectural => "No"
  },
  {
    :image => "https://upload.wikimedia.org/wikipedia/en/9/97/Arby%27s-Midland-MI.jpg",
    :store_name => "Arby's"
    :description => "Taste the deliciousness"
    :square_feet => "25000"
    :nearest => "4"
    :bid => "70000"
    :architectural => "Yes"
  },
  {
    :image => "https://upload.wikimedia.org/wikipedia/commons/d/d8/2009-04-12_The_Home_Depot_in_Knightdale.jpg",
    :store_name => "Home Depot"
    :description => "Buy crap you don't need!"
    :square_feet => "400000"
    :nearest => "20"
    :bid => "2000000"
    :architectural => "Maybe"
  },
  {
    :image => "https://upload.wikimedia.org/wikipedia/commons/5/5f/Red_Lobster%2C_Baton_Rouge.jpg",
    :store_name => "Red Lobster"
    :description => "Movie quote made me famous"
    :square_feet => "40000"
    :nearest => "12"
    :bid => "300000"
    :architectural => "Yes"
  }
]

users = User.all

users.each do |user|
  user.proposals.create proposal_info
end

puts "There are now #{Proposal.count} proposals in the database."

proposals = Proposal.all

proposals.each do |proposal|
  rand(6).times do
    feedback = proposal.feedbacks.build
    feedback.user = users.sample
    feedback.body = Faker::Hacker.say_something_smart
    feedback.save
  end
end

puts "There are now #{Feedback.count} feedbacks in the database."

proposals.each do |proposal|
  users.sample(rand(users.count)).each do |user|
    favorite = proposal.favorites.build
    favorite.user = user
    favorite.save
  end
end

puts "There are now #{Favorite.count} favorites in the database."


