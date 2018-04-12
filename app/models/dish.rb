class Dish < ApplicationRecord
  # Direct associations

  belongs_to :bookmarked_dishes,
             :class_name => "BookmarkedDishse"

  belongs_to :user

  has_many   :venues,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
