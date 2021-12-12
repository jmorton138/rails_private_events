class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :created_events, class_name: "Event", foreign_key: :creator_id
  
  has_many :event_attendings, foreign_key: :event_attendee_id
  has_many :attended_events, through: :event_attendings
  
  has_many :invites, class_name: "Invitation", foreign_key: :invitee_id

  has_one_attached :avatar
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
