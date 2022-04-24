class Officer < ApplicationRecord
    belongs_to :member

    validates :position , presence: true
end
