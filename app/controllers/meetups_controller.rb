class MeetupsController < ApplicationController
#class MeetupsController < ActiveRecord::Base
#has_secure_password
#belongs_to :user
#end



# get '/meetups' do
# "Hello, World!"
# erb :"show"
# end


get '/meetups' do
"Hello, World!"
erb :"meetups/meetups_test"
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