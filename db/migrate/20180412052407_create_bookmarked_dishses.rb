class CreateBookmarkedDishses < ActiveRecord::Migration
  def change
    create_table :bookmarked_dishses do |t|
      t.integer :venues_id
      t.integer :users_id

      t.timestamps

    end
  end
end
