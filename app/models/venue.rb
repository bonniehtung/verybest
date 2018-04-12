class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarkeds,
             :class_name => "BookmarkedDishse",
             :foreign_key => "venues_id",
             :dependent => :destroy

  belongs_to :dishes,
             :class_name => "Dish"

  # Indirect associations

  # Validations

end
