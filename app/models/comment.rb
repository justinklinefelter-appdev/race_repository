class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user_race

  belongs_to :commentor,
             :class_name => "User"

  # Indirect associations

  # Validations

end
