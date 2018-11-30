class User < ApplicationRecord
  # Direct associations

  has_many   :user_races,
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "commentor_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :races,
             :through => :user_races,
             :source => :race

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
