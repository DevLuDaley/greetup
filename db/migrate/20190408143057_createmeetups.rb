class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :event_name
      t.string :event_location
      t.integer :user_id
  end
end
