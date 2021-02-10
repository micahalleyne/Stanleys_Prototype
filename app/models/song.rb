class Song < ApplicationRecord
    belongs_to :topics
    has_many :comments
    acts_as_punchable
end
