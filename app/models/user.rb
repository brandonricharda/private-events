class User < ApplicationRecord
    has_many :event_creations, foreign_key: :event_creator_id
    has_many :created_events, through: :event_creations
end
