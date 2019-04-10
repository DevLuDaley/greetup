require_relative('/Users/LHD/Development/code/Learn_Labs/ONLINE-web-ft-021119/Week8_Sinatra_Project_Week/greetup/app/models/greetup.rb')

Greetup.create(name: "Happy Hour", location: "Bronx, NY", user_id: 1)
Greetup.create(name: "Sadie Hawkins Dance", location: "Queens, NY", user_id: 2)
Greetup.create(name: "Lunch & Learn", location: "Queens, NY", user_id: 1)

User.create(user_name: "nykid", email: "coolemail@aol.com", city: "New York", state: "New York", zipcode: "somewhere", password:"welcome")
User.create(user_name: "Nhkid", email: "goodemail@aol.com", city: "Concord", state: "New Hampshire", zipcode: "somewhere", password:"welcome")
User.create(user_name: "Bkid", email: "okayemail@aol.com", city: "Baltimore", state: "Maryland", zipcode: "somewhere", password:"welcome")

Giant.create(name: "Hodor", location: "Bronx, NY", user_id: 1)
Giant.create(name: "One One", location: "Queens, NY", user_id: 2)
Giant.create(name: "The Mountain", location: "Queens, NY", user_id: 1)
