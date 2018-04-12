class User < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :destroy

  has_many   :venues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
