class AddInvitersToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_reference :invitations, :inviter, references: :user, index: true
    add_foreign_key :invitations, :users, column: :inviter_id
  end
end
