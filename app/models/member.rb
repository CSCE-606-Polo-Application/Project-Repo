class Member < ApplicationRecord
    has_many :riding_times, dependent: :destroy
    has_many :riding_preferences, dependent: :destroy
    has_many :horses, :through => :riding_preferences
    has_one :officer, dependent: :destroy

    validates :uin , presence: true , numericality: { only_integer: true }
    validates :std_first_name , presence: true
    validates :std_last_name , presence: true
    validates :telephone , presence: true , format: {with: /[\d]{3}-?[\d]{3}-?[\d]{4}/}
    validates :email , presence: true , format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i , message: "Please enter valid email address"}

end
