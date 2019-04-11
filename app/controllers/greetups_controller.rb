class GreetupsController < ApplicationController
#class GreetupsController < ActiveRecord::Base
#belongs_to :user
#end

#get greetups/new to create form for new event

#post greetups  to create a new greetup event

#show

#index

# GREETUPS NEW PAGE #

get '/greetups/new' do
#"Hello, World!"
#@greetups = Greetup.all
erb :"greetups/new"
end

post '/greetups' do
#raise params.inspect
#create new greetup and save to the db
#only want to save entry when user is logged_in
if !logged_in?
redirect "/"
end

if params[:name] != "" && if params[:location] != ""
#create new entry
@greetup = Greetup.create(name: params[:name],location: params[:location], user_id: current_user.id)
#, title: params[:title], mood: params[:mood]))
redirect "greetups/#{@greetup.id}"
else
    redirect '/greetups/new'
end
end


#show route
 





 # GREETUPS EDIT by ID#

get '/greetups/edit' do
#get '/greetups/id:/edit' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/edit"
end

    # GREETUPS CREATE #
get '/greetups/create' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/create"
end

get '/greetups/index' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/index"
end



# GREETUPS SHOW PAGE #

get '/greetups/show' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/show"
end

# GREETUPS by ID #

get '/greetups/:id' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/show"
end

get '/greetups/all' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/all"
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
end