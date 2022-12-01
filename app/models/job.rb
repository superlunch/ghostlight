class Job < ApplicationRecord
    has_many :users
    belongs_to :team

    validates :job_title, presence: true
    validates :team_id, presence: true
end
