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
    @users = User.all
    erb :"greetups/index"
  end
  #used to test flash :message
  # get '/greetups/love' do
  #   flash[:hello_world] = "hello world!"
  #   erb :"greetups/love"
  # end

#2
# GREETUPS CREATE/NEW PAGE #
  get '/greetups/new' do
    #@greetups = Greetup.all
  #if !logged_in?
  #  redirect "/"
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'greetups/new'
  #end
  end

post '/greetups' do
#raise params.inspect
#create new greetup and save to the db
#only want to save entry when user is logged_in
@greetups = Greetup.all
redirect_if_not_logged_in
# if !logged_in?
# redirect "/"
#end

#end
#binding.pry
if params[:name] != "" && params[:location] != ""
  #create new entry
  @greetup = Greetup.create(name: params[:name],location: params[:location], user_id: current_user.id)
  #, title: params[:title], mood: params[:mood])) 
   flash[:message] = "Woo hoo! You just created #{@greetup.name}!" #if @greetup.id
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
#@greetups = Greetup.all
#@greetup = Greetup.find_by(id: params[:id])
set_greetup
#@greetups = Greetup.all
#@greetup = Greetup.find(params[:id])
erb :'/greetups/show'
end

#4

#render edit form
 get '/greetups/:id/edit' do
    redirect_if_not_logged_in
    #@greetup = Greetup.find_by(params[:id])
    #binding.pry
    #@greetups = Greetup.all
    set_greetup
if authorized_to_edit?(@greetup)
    erb :'/greetups/edit'
else
    redirect "users/#{current_user.id}"
  end
end

#update greetup
 patch '/greetups/:id' do
    redirect_if_not_logged_in
    # 1. find the greetup
    set_greetup
    #@greetup = Greetup.find(params[:id])
    #@greetups = Greetup.all
    #if logged_in?
    #@greetup = Greetup.find(params[:id])
    if @greetup.user == current_user && params[:name] != ""
    # 2. modify (update) the greetup
    # 3. redirect to show page
      @greetup.update(name: params[:name])
      @greetup.update(location: params[:location])
      redirect "/greetups/#{@greetup.id}"
    else
      redirect "users/#{current_user.id}"
#    end
  end
end

delete '/greetups/:id' do
  set_greetup
  #@greetup = Greetup.find(params[:id])
  if authorized_to_edit?(@greetup)
  #if current_user == @greetup.user 
  #@greetups = Greetup.all
    @greetup.destroy
     flash[:message] = "Successfully deleted #{@greetup.name}."
    redirect '/greetups'
  else
    redirect '/greetups'
  end
end

  private

  def set_greetup
    # puts "*******************************************************"
    # puts self
    # puts "*******************************************************"
    @greetup = Greetup.find(params[:id])
    #binding.pry
    #@greetups = Greetup.all
  end

end
