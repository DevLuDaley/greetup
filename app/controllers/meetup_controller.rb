#class MeetupController < Sinatra::Base
class MeetupController < ActiveRecord::Base
#has_secure_password
belongs_to :alumni
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