class CreateCoffees < ActiveRecord::Migration
  def change
    create_table :coffees do |t|

      t.timestamps null: false
    end
  end
end
