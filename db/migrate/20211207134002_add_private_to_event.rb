class AddPrivateToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :private, :boolean 
  end
end
