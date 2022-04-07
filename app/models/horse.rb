class Horse < ApplicationRecord
    has_many :riding_times
    has_many :riding_preferences, dependent: :destroy
    has_many :members, :through => :riding_preferences
end
