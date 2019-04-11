#require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
 enable :sessions
 set :session_secret, "greetup_app"
  end

get '/' do
#"Hello, World!"
erb :welcome
end

  helpers do
    def logged_in?
      !!current_user
    #allow to return true or false
    #create boolean reflection of it's truthiness
    end

    
    def current_user
      @current_user || = User.find_by(id: session[:user_id])
      #use memoization, it will reduce the number of database calls
      #will return user if there is one
      #instance variable has scope outside of method, extends to class.
    end
  end

end
