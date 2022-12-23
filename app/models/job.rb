class Job < ApplicationRecord
    has_many :users
    belongs_to :team, optional: true

    validates :title, presence: true
    validates :team_id, presence: true
end
