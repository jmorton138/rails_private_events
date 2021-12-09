class Event < ApplicationRecord

    belongs_to :creator, class_name: "User"

    has_many :event_attendings, foreign_key: :attended_event_id
    has_many :event_attendees, through: :event_attendings, source: :event_attendee

    scope :past, ->{ where("event_date < ?", Date.today) }
    scope :future, ->{ where("event_date > ?", Date.today) }

    has_many :invitations
    # def self.past
    #     events = self.all.map do |event| 
    #         event if event.event_date < Date.today
    #     end
    #     #return true if self.event_date < Date.today
    #     return events.compact
    # end

    # def self.future
    #     events = self.all.map do |event|
    #         event if event.event_date > Date.today
    #     end
    #     return events.compact
    # end
end


