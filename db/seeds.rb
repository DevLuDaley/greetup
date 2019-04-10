require_relative('/Users/LHD/Development/code/Learn_Labs/ONLINE-web-ft-021119/Week8_Sinatra_Project_Week/greetup/app/models/greetup.rb')

#create users
rakim = User.create(user_name: "nykid", email: "coolemail@aol.com", city: "New York", state: "New York", zipcode: "somewhere", password:"welcome")
andre3000 = create(user_name: "nhkid", email: "goodemail@aol.com", city: "Concord", state: "New Hampshire", zipcode: "somewhere", password:"welcome")
capri = create(user_name: "bkid", email: "okayemail@aol.com", city: "Baltimore", state: "Maryland", zipcode: "somewhere", password:"welcome")

#create greetups
happy = Greetup.create(name: "Happy Hour", location: "Bronx, NY", user_id: rakim.id)

#use AR to pre-associate data
capri.greetups.create(name: "DJ Dance Party", location: "Queens, NY",)
lunch = Greetup.create(name: "Lunch & Learn", location: "Queens, NY", user_id: 4)


#create giants
hodor = Giant.create(name: "Hodor", location: "Bronx, NY", user_id: 1)
one_one = Giant.create(name: "One One", location: "Brooklyn, NY", user_id: 2)
the_mountain = Giant.create(name: "The Mountain", location: "Queens, NY", user_id: 1)

