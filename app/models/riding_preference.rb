class RidingPreference < ApplicationRecord
    belongs_to :member
    belongs_to :horse
end
