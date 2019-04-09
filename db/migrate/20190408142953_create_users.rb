class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    t.string :user_name
    t.string :email
    t.string :city
    t.string :state
    t.integer :zipcode
    t.string :password
    #t.integer :something
    end
  end
end