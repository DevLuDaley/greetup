#class AlumniController < Sinatra::Base
class UsersController < ApplicationController
#has_secure_password
#will allow for 'authenticate' method???"
#has_many :greetups
#end


#routes needed for login
#purpose = render the login page (form)
get '/users/login' do
    erb :'/users/login'
end

#GET form needs to have a POST- (this creates something new/a session) in this case a form action
#to receive the login form, 
#find the user and log the user in(create a session)
post '/login' do
binding.pry
end

#routes needed for signup
get '/users/signup' do
    erb :'/users/signup'
end




    # configure do
# set :public_folder, 'public'
# set :views, 'app/views'
# enable :sessions
# set :session_secret, "password_security"
# end
# get '/' do
# "Hello, World!"
# end
# end
end