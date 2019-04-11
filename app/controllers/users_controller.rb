#class AlumniController < Sinatra::Base
class UsersController < ApplicationController
#has_secure_password
#will allow for 'authenticate' method???"
#has_many :greetups
#end


#routes needed for login
#purpose = render the login page (form)
get '/login' do
    erb :'/users/login'
end

#GET form needs to have a POST- (this creates something new/a session) in this case a form action
#to receive the login form, 
#find the user and log the user in(create a session)
post '/login' do
#binding.pry

#params look like
#find the user
@user = User.find_by(user_name: params[:username])
#authenticate the user - verify user has th right credentials user_name/password 
#prove that they are who they say they are
if @user.authenticate(params[:password])
#raw string input by user  => (params[:password])
#use hashing algorithm to math the password
#log the user in
session[:user_id] = @user.id #logging in user
#redirect to users landing page (show, index, or dashboard)
redirect "users/#{user.id}"
puts session
else
#tell them that they entered invalid 
#redirect to login page
end
end


#routes needed for signup
get '/signup' do
    erb :signup
end

post '/users' do
if params[:name] != "" && params[:user_name] != "" && params[:password] != ""
    #valid input
    @user = User.create(params)
    #where should the user be sent
    #answer = show page
    redirect "/users/#{@user.id}"
    #erb :'/users/show'
else
#invalid input
end

end
#user SHOW route
get '/users/:id' do
    # what do I need to do first?
    #raise params.inspect
    @user = User.find_by(id: params[:id])
    erb :'/users/show'

end

get 'logout' do
session.clear
redirect '/'
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