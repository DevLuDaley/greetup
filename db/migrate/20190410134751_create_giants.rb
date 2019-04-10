class CreateGiants < ActiveRecord::Migration
  def change
    create_table :giants do |t|
      t.string :name
      t.string :location
      #t.integer :user_id
  end
end
end