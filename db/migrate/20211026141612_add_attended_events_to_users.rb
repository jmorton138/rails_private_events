class AddAttendedEventsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :event_attendings, :attended_event, references: :events, index: true

  end
end

