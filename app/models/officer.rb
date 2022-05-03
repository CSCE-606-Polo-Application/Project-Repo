class Officer < ApplicationRecord
    belongs_to :member, optional: true

    validates :position, presence: true
end
