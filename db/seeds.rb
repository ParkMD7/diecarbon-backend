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
{title:'Replace 5 Lightbulbs with Energy Efficient Bulbs', description: 'If every home in the U.S. replaced their 5 most used light bulbs with Energy Star bulbs, the reduction in carbon emissions would be equivalent to removing 10 million cars from the road. Do your part!', category: 'Home', difficulty: 'Easy', footprint: -103},
{title:'Replace 10 Lightbulbs with Energy Efficient Bulbs', description: 'If your apartment is small like mine then just do your best to replace as many bulbs as you can!', category: 'Home', difficulty: 'Medium', footprint: -206},
{title:'Turn the Thermostat Up 1 Degree(F) in Summer', description: 'One degree difference isnt going to kill you and its an easy thing to do! Also remember to shut off your A/C whenever you leave the house.', category: 'Home', difficulty: 'Easy', footprint: -23},
{title:'Turn the Thermostat Up 5 Degrees(F) in Summer', description: 'A difference of 5 degrees inside will be negligible when its a swealtering hot day in NYC. You can do this! Also remember to shut off your A/C whenever you leave the house.', category: 'Home', difficulty: 'Medium', footprint: -116},
{title:'Turn the Thermostat Down 1 Degree(F) in Winter', description: 'One degree difference isnt going to kill you and its an easy thing to do! Also remember to shut off your heat whenever you leave the house.', category: 'Home', difficulty: 'Easy', footprint: -58},
{title:'Turn the Thermostat Down 5 Degrees(F) in Winter', description: 'A difference of 5 degrees may be tough in the winter but youll get a chance to wear a comfy hoody! You can do this! Also remember to shut off your heat whenever you leave the house.', category: 'Home', difficulty: 'Medium', footprint: -292},
{title:'Wash 1 Load of Laundry Per Week With Cold Water', description: 'Turns out washing your clothes in cold water is better for them as it reduces color bleeding and material shrinking! Add this easy item to your list.', category: 'Home', difficulty: 'Easy', footprint: -31},
{title:'Hang Dry 20% of Clothes Instead of Using A Dryer', description: 'Youre probably already hang drying a few of your clothes so add a few more items next time you hang dry and check this goal off!', category: 'Home', difficulty: 'Medium', footprint: -96},
{title:'Hang Dry 50% of Clothes Instead of Using A Dryer', description: 'This will be tough to do if you live in NYC but you can get creative and hang clothes around your apartment overnight to let them dry.', category: 'Home', difficulty: 'Medium', footprint: -240},
{title:'Hang Dry 100% of Clothes Instead of Using A Dryer', description: 'This is probably impossible if you live in NYC but kudos if you come up with an imaginitve solution!', category: 'Home', difficulty: 'Hard', footprint: -480},
{title:'Replace Windows With Energy Efficient Brand', description: 'This is a difficult item to check off but will significantly reduce your carbon footprint and will eventually pay for itself with reduced energy costs.', category: 'Home', difficulty: 'Hard', footprint: -2947},
{title:'Turn Off the Faucet While Brushing Your Teeth / Shaving', description: 'If you leave the faucet running while youre brushing your teeth youre likely under 10 or an asshole. Check this easy goal off and remember to keep the faucet off!', category: 'Home', difficulty: 'Easy', footprint: -67},
{title:'Cut Shower Time By 5 Minutes', description: 'According to the BBC, the average shower lasts around 8 mins & uses 2.5 gallons per minute. Skip the daydreaming and get clean!', category: 'Home', difficulty: 'Easy', footprint: -104},
{title:'Skip A Shower 1 Day per Week', description: 'Pick a day when you do little to no social or physical activity. You dont need to shower if youre going to be inside watching football all day on Sundays.', category: 'Home', difficulty: 'Medium', footprint: -167},
{title:'Go Off-The-Grid Mode', description: 'Forsake all worldly possessions, deactivate your social media accounts, grow a beard and move into the mountains to live 100% off the land.', category: 'Home', difficulty: 'Impossible', footprint: -40000},
#####################################################
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
