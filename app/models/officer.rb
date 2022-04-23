class Officer < ApplicationRecord
    belongs_to :member
    has_many :riding_times, dependent: :destroy

    validates :position , presence: true
end
