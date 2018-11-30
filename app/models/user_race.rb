class UserRace < ApplicationRecord
  # Direct associations

  belongs_to :race

  belongs_to :user

  # Indirect associations

  # Validations

end
