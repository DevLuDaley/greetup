class GreetupsController < ApplicationController
#class GreetupsController < ActiveRecord::Base
#belongs_to :user
#end

#get greetups/new to create form for new event

#post greetups  to create a new greetup event

#show

#index

#1
get '/greetups' do
#"Hello, World!"
  @greetups = Greetup.all
    erb :"greetups/index"
    end
end


#2
# GREETUPS CREATE/NEW PAGE #

get '/greetups/new' do
"Hello, World!"
#erb :"greetups/new"
end

post '/greetups' do
#raise params.inspect
#create new greetup and save to the db
#only want to save entry when user is logged_in
if !logged_in?
redirect "/"
end

if params[:name] != "" && params[:location] != ""
#create new entry
@greetup = Greetup.create(name: params[:name],location: params[:location], user_id: current_user.id)
#, title: params[:title], mood: params[:mood]))
redirect "greetups/#{@greetup.id}"
else
    redirect '/greetups/new'
#end
end

#3
# GREETUPS SHOW PAGE #
#show route for greetups page
get '/greetups/:id' do
@greetup = Greetup.find(params[:id])
erb :'/greetups/show'
end

#4

 get '/greetups/:id/edit' do
    "Hello, World"
    erb :"/greetup/edit"
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

#end
end