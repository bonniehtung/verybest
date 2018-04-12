class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :time_of_day
      t.string :cuisine
      t.string :populardishes
      t.integer :venues_id
      t.integer :user_id
      t.integer :bookmarked_dishes_id

      t.timestamps

    end
  end
end
