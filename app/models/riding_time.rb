class RidingTime < ApplicationRecord
    belongs_to :member
    belongs_to :horse
    belongs_to :riding_schedule
end
