class Member < ApplicationRecord
    has_many :riding_times
    has_many :riding_preferences
    has_many :horses, :through => :riding_preferences
    has_one :officer
end
