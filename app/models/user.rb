class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :created_events, class_name: "Event", foreign_key: :creator_id
  
  has_many :event_attendings, foreign_key: :event_attendee_id
  has_many :attended_events, through: :event_attendings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
