class Race < ApplicationRecord
  # Direct associations

  has_many   :user_races,
             :dependent => :destroy

  belongs_to :event

  # Indirect associations

  # Validations

end
