class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :dishesyoulove
      t.string :populardishes
      t.string :neighborhood
      t.integer :dishes_id
      t.integer :user_id

      t.timestamps

    end
  end
end
