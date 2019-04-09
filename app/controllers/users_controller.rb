#class AlumniController < Sinatra::Base
class UsersController < ActiveRecord::Base
has_secure_password
has_many :meetups
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