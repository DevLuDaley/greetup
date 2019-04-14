require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
 enable :sessions
 set :session_secret, "greetup"
  register Sinatra::Flash
  end

get '/' do
#"Hello, World!"
#redirect_if_logged_in
if logged_in?
  redirect "users/#{current_user.id}"
else
  erb :welcome
end

end

  helpers do

    def logged_in?
      !!current_user
    #allow to return true or false
    #create boolean reflection of it's truthiness
    # true if user is logged in, otherwise false
    end

    
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
      #code from Alicia Santiago -> 
          ##session[:user_id] && User.find_by(id: session[:user_id])

      #use memoization, it will reduce the number of database calls
      #will return user if there is one
      #instance variable has scope outside of method, extends to class.
    end
    
    def authorized_to_edit?(greetup)
      greetup.user == current_user
    end

 # use this helper method to protect controller actions where user must be logged in to proceed
    def redirect_if_not_logged_in
      if !logged_in?
        flash[:errors] = "You must be logged in to view the page you tried to view."
        redirect '/'
      end
    end 


    # use this helper method to avoid showing welcome, login, or signup page to a user that's already logged in
    def redirect_if_logged_in
      if logged_in?
        redirect "/users/#{current_user.id}"
      end
    end

  end

end
