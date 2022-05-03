class RidingTime < ApplicationRecord
    belongs_to :member optional: true
    belongs_to :horse optional: true
    belongs_to :riding_schedule optional: true
end
