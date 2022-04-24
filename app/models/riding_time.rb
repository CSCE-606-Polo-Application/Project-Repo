class RidingTime < ApplicationRecord
    belongs_to :officer
    belongs_to :member
    belongs_to :horse
end
