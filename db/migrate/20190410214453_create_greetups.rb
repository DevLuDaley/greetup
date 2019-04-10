class CreateGreetups < ActiveRecord::Migration
  def change
    create_table :greetups do |t|
      t.string :name
      t.string :location
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
