class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarked_dishses,
             :foreign_key => "users_id",
             :dependent => :destroy

  has_many   :dishes,
             :dependent => :destroy

  has_many   :venues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
