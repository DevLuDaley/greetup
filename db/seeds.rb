# require_relative('/Users/LHD/Development/code/Learn_Labs/ONLINE-web-ft-021119/Week8_Sinatra_Project_Week/greetup/app/models/greetup.rb')
# require_relative('/Users/LHD/Development/code/Learn_Labs/ONLINE-web-ft-021119/Week8_Sinatra_Project_Week/greetup/app/models/user.rb')

User.destroy_all

#create users
lu = User.create(user_name: "Lu", email: "l@lu.com", password:"password")
nd = User.create(user_name: "Nik", email: "n@lu.com", password:"password")

Greetup.destroy_all
#create greetups
Greetup.create(name: "Happy Hour", location: "Montclair, NJ", user_id: lu.id)

#use AR to pre-associate data
lu.greetups.create(name: "DJ Dance Party", location: "New York, NY",)


nd_greetup = nd.greetups.build(name: "Lunch & Learn", location: "Queens, NY")
nd_greetup.save

