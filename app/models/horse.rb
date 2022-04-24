class Horse < ApplicationRecord
    has_many :riding_times
    has_many :riding_preferences, dependent: :destroy
    has_many :members, :through => :riding_preferences

    validates :horse_name , presence: true 
    validates :brand_number , presence: true , numericality: { only_integer: true }
end
