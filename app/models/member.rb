class Member < ApplicationRecord
    has_many :riding_times, dependent: :destroy
    has_many :riding_preferences, dependent: :destroy
    has_many :horses, :through => :riding_preferences
    has_one :officer, dependent: :destroy
end
