class Event < ApplicationRecord
    has_one :event_creation, foreign_key: :created_event_id
    has_one :creator, through: :event_creation, source: :event_creator
    belongs_to :creator, class_name: "User"
end
