class Race < ApplicationRecord
  # Direct associations

  has_many   :user_races,
             :dependent => :destroy

  belongs_to :event

  # Indirect associations

  has_many   :users,
             :through => :user_races,
             :source => :user

  # Validations

end
