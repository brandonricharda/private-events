class RemoveDoubleIdFromEventCreation < ActiveRecord::Migration[5.2]
  def change
    rename_column :event_creations, :created_event_id_id, :created_event_id
    rename_column :event_creations, :event_creator_id_id, :event_creator_id
  end
end
