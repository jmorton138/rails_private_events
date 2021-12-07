class AddReferencestoInvitations < ActiveRecord::Migration[6.1]
  def change
    add_reference :invitations, :event, index: true
    add_foreign_key :invitations, :events, column: :event_id
  end
end
