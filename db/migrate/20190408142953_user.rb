class User < ActiveRecord::Migration[5.2]
  def change
create_table :user do |t|
t.string :user_name
t.string :email
t.string :password
#t.integer :something
end
end
end