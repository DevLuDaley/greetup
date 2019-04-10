class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :event_name
      t.string :event_location
      t.integer :user_id
    end
  end
end
#Meetup.new(event_name: "Legion", event_location: "Summerland", user_id: nil),
 #<Meetup:0x00007f9edcd1c428 id: 2, event_name: nil, event_location: nil, user_id: nil>]