class AddAttendeeReferencesToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :event_attendings, :event_attendee, references: :users, index: true

  end
end
