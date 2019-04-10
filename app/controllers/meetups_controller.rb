class MeetupsController < ApplicationController

    get '/meetups' do
        #"Hello, World!"
        @meetups = Meetup.all
        erb :"meetups/index"
    end

end