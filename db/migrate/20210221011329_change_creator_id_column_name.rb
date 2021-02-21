class ChangeCreatorIdColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :event_creations, :event_creator_id, :creator_id
  end
end
