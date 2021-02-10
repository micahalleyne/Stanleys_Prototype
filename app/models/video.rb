class Video < ApplicationRecord
    belongs_to :topics
    has_many :comments
    acts_as_punchable
end
