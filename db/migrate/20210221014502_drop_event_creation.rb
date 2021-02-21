class DropEventCreation < ActiveRecord::Migration[5.2]
  def change
    drop_table :event_creations
  end
end
