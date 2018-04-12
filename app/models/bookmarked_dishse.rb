class BookmarkedDishse < ApplicationRecord
  # Direct associations

  has_one    :dish,
             :foreign_key => "bookmarked_dishes_id",
             :dependent => :destroy

  belongs_to :users,
             :class_name => "User"

  belongs_to :venues,
             :class_name => "Venue"

  # Indirect associations

  # Validations

end
