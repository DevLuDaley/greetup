class GreetupsController < ApplicationController
# < ActiveRecord::Base

#get greetups/new to create form new event

#post greetups  to create a new greetup event

#show

#index

#1
  get '/greetups' do
    #"Hello, World!"
    @greetups = Greetup.all
    #@users = User.all
    erb :"greetups/index"
  end

#2
# GREETUPS CREATE/NEW PAGE #
  get '/greetups/new' do
    #redirect_if_not_logged_in
  if !logged_in?
    redirect "/"
    erb :'greetups/new'
  end
  #end

post '/greetups' do
#raise params.inspect
#create new greetup and save to the db
#only want to save entry when user is logged_in
#redirect_if_not_logged_in
if !logged_in?
redirect "/"
end

end
#binding.pry
if params[:name] != "" && params[:location] != ""
  #create new entry
  @greetup = Greetup.create(name: params[:Name],location: params[:Location], user_id: current_user.id)
  #, title: params[:title], mood: params[:mood]))
   flash[:message] = "Greetup successfully created." if @greetup.id
  redirect "greetups/#{@greetup.id}"
else
  flash[:errors] = "Something went wrong - you must provide information for your event."
  redirect '/greetups/new'
  #end
end

end
#3
# GREETUPS SHOW PAGE #
#show route for greetups page
get '/greetups/:id' do
#@greetup = Greetup.find(params[:id])
set_greetup
erb :'/greetups/show'
end

#4

#render edit form
 get '/greetups/:id/edit' do
    #redirect_if_not_logged_in
    set_greetup
if authorized_to_edit?(@greetup)
    erb :"/greetup/edit"
else
    redirect "/users/#{current_user.id}"
end
  end

#update greetup
 patch '/journal_entries/:id' do
    #redirect_if_not_logged_in
    # 1. find the journal entry
    set_greetup
    if @greetup.user == current_user && params[:name] != ""
    # 2. modify (update) the journal entry
      @greetup.update(name: params[:name])
      # 3. redirect to show page
      redirect "/journal_entries/#{@greetup.id}"
    else
      redirect "users/#{current_user.id}"
    end
  end




delete '/greetups/:id' do
  set_greetup
  if authorized_to_edit?(@greetup)
    @greetup.destroy
     flash[:message] = "Successfully deleted that event."
    redirect '/greetups'
  end
end

  private

  def set_greetup
    @greetup = Greetup.find(params[:id])
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
