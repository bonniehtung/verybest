class BookmarkedDishse < ApplicationRecord
  # Direct associations

  belongs_to :users,
             :class_name => "User"

  belongs_to :venues,
             :class_name => "Venue"

  # Indirect associations

  # Validations

end
