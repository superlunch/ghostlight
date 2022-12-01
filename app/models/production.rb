class Production < ApplicationRecord
    has_many :users
    has_many :report_fields
    has_many :jobs, through: :users

    validates :prod_title, presence: true
end
