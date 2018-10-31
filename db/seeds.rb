require 'faker'

User.destroy_all
Goal.destroy_all
UserGoal.destroy_all

#####################################################

puts "MAKING USERS"
User.create([
{name:Faker::BojackHorseman.character, email:Faker::Internet.free_email, location:'51 Grove St, New York, NY, 10014', username: 'user1', password_digest: 'google12345', footprint: 40000, picture: Faker::Avatar.image},
{name:Faker::BojackHorseman.character, email:Faker::Internet.free_email, location:'361 W 17th St, New York, NY, 10011', username: 'user2', password_digest: 'google12345', footprint: 40000, picture: Faker::Avatar.image },
{name:Faker::BojackHorseman.character, email:Faker::Internet.free_email, location: '1031 Lexington Ave, New York, NY 10021', username: 'user3', password_digest: 'google12345', footprint: 40000, picture: Faker::Avatar.image},
{name:Faker::BojackHorseman.character, email:Faker::Internet.free_email, location: '238 Malcolm X Blvd, New York, NY 10027', username: 'user4', password_digest: 'google12345', footprint: 40000, picture: Faker::Avatar.image},
{name:Faker::BojackHorseman.character, email:Faker::Internet.free_email, location: '33-12 23rd Ave, Astoria, NY 11105', username: 'user5', password_digest: 'google12345', footprint: 40000, picture: Faker::Avatar.image},
{name:Faker::BojackHorseman.character, email:Faker::Internet.free_email, location: '514 Union St, Brooklyn, NY 11215', username: 'user10', password_digest: 'google12345', footprint: 40000, picture: Faker::Avatar.image}
])
puts 'DONE MAKING USERS'

#####################################################

puts "MAKING GOALS"
Goal.create([
{title:'Purchase A Low Flow Shower Head', description: 'Using a low-flow shower head can save 350 pounds of CO2e per year. Setting the temperature to 120°F can help improve a hot water heater’s efficiency.', category: 'Home', difficulty: 'Easy', footprint: -350},
{title:'Cut Shower Time By 5 Minutes', description: 'According to the BBC, the average shower lasts around 8 mins & uses 2.5 gallons per minute. Skip the daydreaming and get clean!', category: 'Home', difficulty: 'Easy', footprint: -104},
{title:'Exclusively Use Public Transportation', description: 'This is the first goal all New Yorkers should check off! The MTA sucks but you can tell yourself youre saving the environment every time you use it', category: 'Travel', difficulty: 'Easy', footprint: -11587},
{title:'Eat Vegetarian 2 Days Per Week', description: 'Youll be able to smugly join conversations with other Vegetarians and Vegans now', category: 'Food', difficulty: 'Medium', footprint: -2154},
{title:'Recycle All Plastic', description: 'You should already be doing this but just in case you dont, google plastic effecting turtles', category: 'Food', difficulty: 'Easy', footprint: -36},
{title:'Unplug all electronic devices when not in use', description: 'This is very hard because people are lazy', category: 'Goods', difficulty: 'Hard', footprint: -1000}
])
puts 'DONE MAKING GOALS'

#####################################################

puts 'MAKING USERGOALS'
UserGoal.create([
{goal_id:Goal.all[0].id, user_id:User.all[0].id},
{goal_id:Goal.all[1].id, user_id:User.all[1].id},
{goal_id:Goal.all[2].id, user_id:User.all[2].id},
{goal_id:Goal.all[3].id, user_id:User.all[3].id},
{goal_id:Goal.all[4].id, user_id:User.all[4].id},
{goal_id:Goal.all[5].id, user_id:User.all[5].id}
])
puts 'DONE MAKING USERGOALS'
