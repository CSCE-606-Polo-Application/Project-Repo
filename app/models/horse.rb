class Horse < ApplicationRecord
    has_many :riding_times
    has_many :members, :through => :riding_preferences
end
