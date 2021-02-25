class Event < ApplicationRecord
    has_many :attendances
    belongs_to :creator, class_name: "User"
    has_many :attendees, through: :attendances, source: :user
end
