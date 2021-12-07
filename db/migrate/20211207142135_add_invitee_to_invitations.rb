class AddInviteeToInvitations < ActiveRecord::Migration[6.1]
  def change
      add_reference :invitations, :invitee, references: :user, index: true
      add_foreign_key :invitations, :users, column: :invitee_id
  end
end
