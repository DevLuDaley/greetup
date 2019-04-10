class GreetupsController < ApplicationController
#class GreetupsController < ActiveRecord::Base
#has_secure_password
#belongs_to :user
#end


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

# GREETUPS NEW PAGE #

get '/greetups/new' do
#"Hello, World!"
@greetups = Greetup.all
erb :"greetups/new"
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