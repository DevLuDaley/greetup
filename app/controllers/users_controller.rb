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
@user = User.find_by(user_name: params[:user_name])
#authenticate the user - verify user has th right credentials user_name/password 
#prove that they are who they say they are
if @user && @user.authenticate(params[:password]) #log the user in
#raw string input by user  => (params[:password])
#use hashing algorithm to math the password

 # redirect to the user's show page
session[:user_id] = @user.id #logging in user
#redirect to users landing page (show, index, or dashboard)
flash[:message] = "Welcome, #{@user.name}!"
#binding.pry

redirect "users/#{@user.id}"
#puts session
else
    flash[:errors] = "Your credentials were invalid.  Please sign up or try again."
    #tell them that they entered invalid
    #redirect to login page
    redirect '/login'
    end
end


#routes needed for SIGN-UP PAGE/ROUTE
get '/signup' do
    redirect_if_logged_in
    #erb will "render" view. render is user in rails instead of erb.
    erb :signup
end

post '/users' do
    #if params[:name] != "" && params[:user_name] != "" && params[:password] != ""
        #valid input
    # params will look like this:
            # {
    #   "name"=>"lu",
    #   "user_name"=>"Lu",
    #   "password"=>"password"
    # }

        @user = User.create(params)
            if @user.save
        session[:user_id] = @user.id #logging in user #after user signup
        #where should the user be sent
    #answer = show page
        #erb :'/users/show'
      flash[:message] = "Congrats #{@user.name.upcase}, You have successfully created an account!"
      redirect "/users/#{@user.id}"
else
#invalid input
        flash[:errors] = "Account creation failure: #{@user.errors.full_messages.to_sentence}"
        redirect '/signup'
        #stretch goal::: add error page with link to the signup page.
        ###it would be a  better UX for them to receive a message about what they did wrong and how they can fix it.
    end

end
#user SHOW route
get '/users/:id' do
    # what do I need to do first?
    #raise params.inspect
    #@users = User.all
    @user = User.find_by(id: params[:id])
    redirect_if_not_logged_in
    @greetups = Greetup.all
    erb :'/users/show'

end

get '/logout' do
    session.clear
    redirect '/'
    flash[:message] = "Congrats #{@user.name.upcase}, You have successfully logged out your account."
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