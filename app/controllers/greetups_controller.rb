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

  get '/greetups/love' do
    flash[:hello_world] = "hello world!"
    erb :"greetups/love"
  end

#2
# GREETUPS CREATE/NEW PAGE #
  get '/greetups/new' do
    #redirect_if_not_logged_in
  #if !logged_in?
  #  redirect "/"
    erb :'greetups/new'
  #end
  end

post '/greetups' do
#raise params.inspect
#create new greetup and save to the db
#only want to save entry when user is logged_in
#redirect_if_not_logged_in
if !logged_in?
redirect "/"
end

#end
#binding.pry
if params[:name] != "" && params[:location] != ""
  #create new entry
  @greetup = Greetup.create(name: params[:Name],location: params[:Location], user_id: current_user.id)
  #, title: params[:title], mood: params[:mood]))
   flash[:message] = "Greetup successfully created." #if @greetup.id
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
@greetup = Greetup.find(params[:id])
#@greetup = Greetup.find_by(id: params[:id])
set_greetup
erb :'/greetups/show'
end

#4

#render edit form
 get '/greetups/:id/edit' do
    #redirect_if_not_logged_in
    #binding.pry
    @greetup = Greetup.find_by(params[:id])
    #set_greetup
if authorized_to_edit?(@greetup)
    erb :"/greetups/edit"
else
    redirect "/users/#{current_user.id}"
end
  end

#update greetup
 patch '/greetups/:id' do
    #redirect_if_not_logged_in
    # 1. find the greetup
    #set_greetup
    @greetup = Greetup.find(params[:id])
    if @greetup.user == current_user && params[:name] != ""
    # 2. modify (update) the greetup
      @greetup.update(name: params[:name])
      # 3. redirect to show page
      redirect "/greetups/#{@greetup.id}"
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

end
