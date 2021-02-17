class CreateEventCreations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_creations do |t|
      t.references :created_event_id
      t.references :event_creator_id
      t.timestamps
    end
  end
end
