class RidingSchedule < ApplicationRecord
    has_many :riding_times, dependent: :destroy
    has_many :members, :through => :riding_times
    has_many :horses, :through => :riding_times
end
