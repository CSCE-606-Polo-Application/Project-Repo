class RidingPreference < ApplicationRecord
    belongs_to :member, optional: true
    belongs_to :horse, optional: true
end
