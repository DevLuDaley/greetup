require_relative('/Users/LHD/Development/code/Learn_Labs/ONLINE-web-ft-021119/Week8_Sinatra_Project_Week/greetup/app/models/greetup.rb')
require_relative('/Users/LHD/Development/code/Learn_Labs/ONLINE-web-ft-021119/Week8_Sinatra_Project_Week/greetup/app/models/user.rb')

#create users
rakim = User.create(user_name: "nykid", email: "coolemail@aol.com", password:"welcome")
andre3000 = create(user_name: "nhkid", email: "goodemail@aol.com", password:"welcome")
capri = create(user_name: "bkid", email: "okayemail@aol.com", password:"welcome")

#create greetups
happy = Greetup.create(name: "Happy Hour", location: "Bronx, NY", user_id: rakim.id)

#use AR to pre-associate data
capri.greetups.create(name: "DJ Dance Party", location: "Queens, NY",)
lunch = Greetup.create(name: "Lunch & Learn", location: "Queens, NY", user_id: 4)

