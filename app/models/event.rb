class Event < ApplicationRecord
    validates :creator_id, presence: true
    validates :name, uniqueness: true
    has_many :attendances, dependent: :destroy
    belongs_to :creator, class_name: "User"
    has_many :attendees, through: :attendances, source: :user
    scope :past, -> { where("(date) < ?", Date.today ) }
    scope :upcoming, -> { where("(date) > ?", Date.today) }
end