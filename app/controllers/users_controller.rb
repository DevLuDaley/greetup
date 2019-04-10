#class AlumniController < Sinatra::Base
class UsersController < ApplicationController
has_secure_password
has_many :meetups
end


#routes needed for login
#purpose = render the login page (form)
get '/login' do
    erb :login
end

#routes needed for signup
get '/signup' do
    erb :signup
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